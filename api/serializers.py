from django.contrib.auth.models import User,Group
from .models import Closing, Orders, OrderDetail, Product, Cart
from rest_framework import serializers

from rest_framework_simplejwt.serializers import TokenObtainPairSerializer

class LoginSerializer(TokenObtainPairSerializer):

    def validate(self, attrs):
        # Validasi username + password menggunakan SimpleJWT
        data = super().validate(attrs)

        user = self.user

        # Ambil application dari request
        application = self.context["request"].data.get("application")

        # Ambil semua group user
        groups = list(
            user.groups.values_list("name", flat=True)
        )

        # User harus memiliki role
        if not groups:
            raise serializers.ValidationError(
                "User belum memiliki role."
            )

        # Untuk sementara kita gunakan satu role per user
        role = groups[0]

        # Validasi akses berdasarkan aplikasi
        if application == "ecommerce":
            if role not in ["ADMIN", "CUSTOMER"]:
                raise serializers.ValidationError(
                    "User tidak memiliki akses ke E-commerce."
                )

        elif application == "pos":
            if role not in ["ADMIN", "CASHIER"]:
                raise serializers.ValidationError(
                    "User tidak memiliki akses ke POS."
                )

        else:
            raise serializers.ValidationError(
                "Application harus berupa 'ecommerce' atau 'pos'."
            )

        # Tambahkan informasi role dan application ke response
        data["role"] = role
        data["application"] = application

        return data

class RegisterSerializer(serializers.ModelSerializer):
    password = serializers.CharField(
        write_only=True,
        min_length=8
    )

    password_confirmation = serializers.CharField(
        write_only=True
    )

    class Meta:
        model = User
        fields = [
            "username",
            "email",
            "password",
            "password_confirmation",
        ]

    def validate_username(self, value):
        if User.objects.filter(username=value).exists():
            raise serializers.ValidationError(
                "Username sudah digunakan."
            )

        return value

    def validate_email(self, value):
        if User.objects.filter(email=value).exists():
            raise serializers.ValidationError(
                "Email sudah digunakan."
            )

        return value

    def validate(self, attrs):
        if attrs["password"] != attrs["password_confirmation"]:
            raise serializers.ValidationError({
                "password_confirmation": "Password tidak sama."
            })

        return attrs

    def create(self, validated_data):
        validated_data.pop("password_confirmation")

        user = User.objects.create_user(
            username=validated_data["username"],
            email=validated_data["email"],
            password=validated_data["password"],
        )

        customer_group = Group.objects.get(
            name="CUSTOMER"
        )

        user.groups.add(customer_group)

        return user

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

class CartSerializer(serializers.ModelSerializer):
    product_id = serializers.PrimaryKeyRelatedField(
        source="product",
        queryset=Product.objects.all(),
        write_only=True
    )

    product = serializers.SerializerMethodField(read_only=True)

    class Meta:
        model = Cart
        fields = [
            "id",
            "product_id",
            "product",
            "quantity",
            "created_at",
            "updated_at",
        ]

    def get_product(self, obj):
        return {
            "id": obj.product.id,
            "name": obj.product.name,
            "price": obj.product.price,
            "img": obj.product.image,
            
            # tambahkan field lain sesuai model Product kamu
        }

    def validate_quantity(self, value):
        if value < 1:
            raise serializers.ValidationError(
                "Quantity minimal 1."
            )

        return value
