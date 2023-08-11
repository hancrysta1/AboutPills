from rest_framework import serializers
from .models import *

# class resultsSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = results
#         fields = ('id','name','detail','like',)
class resultsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Pills
        fields = ('id','seq','name','company','detail','shape','color','image','zzim','printing','classy','aim',)

class memberSerializer(serializers.ModelSerializer):
    class Meta:
        model = Member
        fields = ('uid','name','pwd',)

class LoginSerializer(serializers.ModelSerializer):
    class Meta:
        model = Member
        fields = ('uid','pwd',)


#Like 전체 출력
class LikeSerializer(serializers.ModelSerializer):#name으로 조회걸어서 pills에서 가져오기
    class Meta:
        model = Likes
        fields = ('uid','pills_id')
        
#삽질 시작
class TypeBaseSerializer(serializers.Serializer):
    class Meta:
        fields = ['id','seq','name','company','detail','shape','color','image','zzim','printing','uid','pills_id']
        abstract = True
        
  
    
    # id = serializers.IntegerField()
    # seq = serializers.IntegerField()
    # name = serializers.CharField()
    # company = serializers.CharField()
    # detail = serializers.CharField()
    # shape = serializers.CharField()
    # color = serializers.CharField()
    # image = serializers.CharField()
    # zzim = serializers.BooleanField()
    # printing = serializers.CharField()
    # uid = serializers.CharField()
    # pills_id = serializers.IntegerField()
    
    # class Meta:
    #     fields=('id','seq','name','company','detail','shape','color','image','zzim','printing','uid','pills_id')


        
class SolutionSerializer(serializers.ModelSerializer):
    class Meta:
        model = Solution
        fields = ('id','seq','name','company','detail','shape','color','image','zzim','printing','uid','pills_id')

class PostLikeSerializer(serializers.ModelSerializer):
    class Meta:
        model = results
        fields = ['like']
        