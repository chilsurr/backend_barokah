# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.contrib.auth.models import User
from django.db import models


class Closing(models.Model):
    std = models.IntegerField()
    avc = models.FloatField()
    itm = models.IntegerField()
    inc = models.FloatField()
    hpp = models.FloatField()
    prf = models.FloatField()
    created_at = models.DateTimeField(db_column='created_at', auto_now_add= True)
    user = models.ForeignKey(User, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'closing'


class OrderDetail(models.Model):
    order = models.ForeignKey('Orders', models.DO_NOTHING, )
    product = models.ForeignKey('Product', models.DO_NOTHING, )
    quantity = models.IntegerField()
    price = models.FloatField(max_length=255)
    created_at = models.DateField(db_column='created_at', auto_now_add= True)
    user = models.ForeignKey(User, models.DO_NOTHING,)

    class Meta:
        managed = True
        db_table = 'order_detail'


class Orders(models.Model):
    invoice = models.CharField(max_length=50, )
    total = models.IntegerField()
    created_at = models.DateTimeField(db_column='created_at', auto_now_add= True)
    user = models.ForeignKey(User, models.DO_NOTHING,)

    class Meta:
        managed = True
        db_table = 'orders'


class Product(models.Model):
    name = models.CharField(max_length=100, blank=True, null=True)
    price = models.FloatField(blank=True, null=True)
    hpp = models.FloatField(blank=True, null=True)
    category = models.CharField(max_length=50, blank=True, null=True)
    stock = models.IntegerField(blank=True, null=True)
    user = models.ForeignKey(User, models.DO_NOTHING, blank=True, null=True)
    image = models.ImageField(upload_to="products/",blank=True ,null=True)
    def __str__(self):
        return f"name: {self.name} | Stock: {self.stock} | hpp: {self.hpp} | category: {self.category}| Price: {self.price} | user: {self.user}|"

    class Meta:
        managed = True
        db_table = 'product'


# class User(models.Model):
#     username = models.CharField(max_length=100, blank=True, null=True)
#     email = models.CharField(max_length=100, blank=True, null=True)
#     password = models.CharField(max_length=100, blank=True, null=True)
#     kode_user = models.IntegerField(blank=True, null=True)

#     class Meta:
#         managed = False
#         db_table = 'user'
