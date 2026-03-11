from django.contrib.auth.models import User
from .models import Closing, Orders, OrderDetail, Product
from rest_framework import serializers

class registerSerializer(serializers.ModelSerializer):
    class Meta:
        fields = [
        'username',
        'email',
        'password'
    ],
    def validate_username(self, value):
        if User.objects.filter(username = value).exists():
            raise serializers.ValidationError("Username Already exist")
        return value

class productSerializer(serializers.ModelSerializer):
    class Meta:
        model = Product
        fields = '__all__'

class ordersSerializer(serializers.ModelSerializer):
    created_at = serializers.DateTimeField(format="%Y-%m-%d",read_only=True) #untuk merubah data datetime di model menjadi date saja 
    class Meta:
        model = Orders
        fields = '__all__'
        
class orderDetailSerializer(serializers.ModelSerializer):
    product = productSerializer(read_only=True)
    product_detail = serializers.PrimaryKeyRelatedField(
        queryset= Product.objects.all() ,source='product', write_only=True,
    )
    class Meta:
        model = OrderDetail
        fields = [
            'id',
            'order',
            'product',
            'product_detail',
            'quantity',
            'price',
            'created_at',
            'user'
        ]

class closingSerializer(serializers.ModelSerializer):
    created_at = serializers.DateTimeField(format="%Y-%m-%d",read_only=True) #untuk merubah data datetime di model menjadi date saja 
    class Meta:
        model = Closing
        fields = '__all__'


    
class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ['id', 'username', 'email', 'is_superuser']

