from django.contrib.auth.models import User
from .models import  Closing,OrderDetail, Orders, Product
from . serializers import  closingSerializer,orderDetailSerializer, ordersSerializer, productSerializer,UserSerializer

from rest_framework import viewsets, permissions,status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import IsAuthenticated
from rest_framework.parsers import MultiPartParser, FormParser

from django.http import HttpResponse

import pandas as pd
import numpy as np
from io import BytesIO


class productViewSets(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = productSerializer
    permission_classes = [permissions.AllowAny]

class ordersViewSets(viewsets.ModelViewSet):
    queryset = Orders.objects.all()
    serializer_class = ordersSerializer
    permission_classes = [permissions.AllowAny]

class orderDetailViewSets(viewsets.ModelViewSet):
    queryset = OrderDetail.objects.all()
    serializer_class = orderDetailSerializer
    permission_classes = [permissions.AllowAny]

class closingViewSets(viewsets.ModelViewSet):
    queryset = Closing.objects.all()
    serializer_class = closingSerializer
    permission_classes = [permissions.IsAuthenticated]

class userViewSets(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAuthenticated]

class GetUserView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self,request) :
        serializer = UserSerializer(request.user)
        return Response (serializer.data)

class UploadExcelView(APIView):
    parser_classes = (MultiPartParser, FormParser)
    def post(self, request):
        file = request.FILES.get('excel-file')
        print("testing masuk pak lewat 3")

        if not file:
            return Response({"error": "File tidak ditemukan"}, status=400)

        if not file.name.endswith(('.xlsx', '.xls')):
            return Response({"error": "File harus Excel"}, status=400)

        # baca excel langsung tanpa simpan
        df = pd.read_excel(BytesIO(file.read()), sheet_name="Sheet1")
        df = df.replace([np.inf, -np.inf], np.nan).fillna(0)
        print(df)
        for _, row in df.iterrows():

            name = row['name']
            stock = row['stock']
            product = Product.objects.filter(
                name = name,
                user = request.user
            ).first()
            if product :
                print('masuk update pak')
                product.stock = product.stock + stock
                product.save()
            else:
                print('nambah baru pak')
                Product.objects.create(
                    name=row['name'],       # sesuaikan dengan kolom di Excel
                    price=row['price'],
                    hpp=row['hpp'],
                    category=row['category'],
                    stock=int(row['stock']),
                    user=request.user,
                )
        return Response({
            "message": f"data berhasil disimpan."
        })

class ExportExcelView(APIView):
    def post(self, request):
        # 1. data dari React (sudah otomatis JSON)
        data = request.data  # ARRAY of OBJECT
        print(data)

        # 2. buat DataFrame
        df = pd.DataFrame(data)

        # 3. siapkan response excel
        response = HttpResponse(
            content_type="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
        )
        response["Content-Disposition"] = 'attachment; filename="data_export.xlsx"'

        # 4. tulis excel ke memory
        with pd.ExcelWriter(response, engine="openpyxl") as writer:
            df.to_excel(writer, index=False, sheet_name="Sheet1")

        return response

class CheckAuthView(APIView):
    permission_classes = [IsAuthenticated]

    def get(self, request):
        print(status.is_success(Response.status_code))
        print(request.user)
        return Response({
            "status": status.is_success(Response.status_code),
            "user": request.user.username,
            "id": request.user.id
        })
