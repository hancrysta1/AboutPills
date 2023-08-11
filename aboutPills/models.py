from MySQLdb import Connection
from django.db import models

# Create your models here.
#데이터베이스에 들어갈 도메인 지정, API(serializer) 통해 JSON형태로 DB에 보내줘야함
#models -> serializers -> views -> urls -> admin


class results(models.Model):
    name = models.CharField(primary_key=True,max_length=50)
    detail = models.CharField(max_length=100)
    like = models.BooleanField(default=False)
    
    
class Pills(models.Model):
    id = models.AutoField(primary_key=True)
    seq = models.CharField(max_length=30, blank=True, null=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    company = models.CharField(max_length=30, blank=True, null=True)
    detail = models.CharField(max_length=10000, blank=True, null=True)
    shape = models.CharField(max_length=50, blank=True, null=True)
    color = models.CharField(max_length=50, blank=True, null=True)
    image = models.CharField(max_length=1000, blank=True, null=True)
    zzim = models.BooleanField(default=False)
    printing = models.CharField(max_length=100, blank=True, null=True)
    classy = models.TextField(max_length=50,blank=True, null=True)
    aim = models.TextField(max_length=50,blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'pills'
        
class Member(models.Model):
    uid = models.CharField(primary_key=True, max_length=20)
    name = models.CharField(max_length=10)
    pwd = models.CharField(max_length=16)

    class Meta:
        managed = False
        db_table = 'member'
        
class Zzim(models.Model):
    uid = models.CharField(primary_key=True, max_length=20)
    seq = models.CharField(max_length=30, blank=True, null=True)
    name = models.CharField(max_length=50, blank=True, null=True)#알약 이름
    detail = models.CharField(max_length=10000, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'zzim'
        

class Likes(models.Model):
    uid = models.CharField(max_length=20)
    pills_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'likes'
        
#첫 방법
# class UserData(models.Model):
#     def __init__(self,Pills,Likes):
#         self.Pills = Pills
#         self.Likes = Likes
#두번 째 방법
class PillsLikes(models.Model):
    id = models.AutoField(primary_key=True)
    seq = models.CharField(max_length=30, blank=True, null=True)
    name = models.CharField(max_length=50)
    company = models.CharField(max_length=30, blank=True, null=True)
    detail = models.CharField(max_length=10000, blank=True, null=True)
    shape = models.CharField(max_length=15, blank=True, null=True)
    color = models.CharField(max_length=15, blank=True, null=True)
    image = models.CharField(max_length=1000, blank=True, null=True)
    zzim = models.BooleanField(default=False)
    printing = models.CharField(max_length=20, blank=True, null=True)
    uid = models.CharField(max_length=20)
    pills_id = models.ForeignKey(Pills,on_delete=models.DO_NOTHING)

    class Meta:
        managed = False

class Solution(models.Model):
    solution = models.CharField(primary_key=True,max_length=150)