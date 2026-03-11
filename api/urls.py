from rest_framework import routers
from django.urls import include,path
from api import views

from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

from .views import UploadExcelView,ExportExcelView,GetUserView,CheckAuthView

router = routers.DefaultRouter()

router.register(r'products', views.productViewSets)
router.register(r'order', views.ordersViewSets)
router.register(r'orderdetail', views.orderDetailViewSets)
router.register(r'closing', views.closingViewSets)


urlpatterns = [
    path('', include(router.urls)),
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('user/', GetUserView.as_view(), name='current-user'),
    path('check-auth/', CheckAuthView.as_view(), name='check-auth'),
    path('upload-excel/', UploadExcelView.as_view(), name='upload-excel'),
    path("export-excel/", ExportExcelView.as_view(),name='export-excel'),
]