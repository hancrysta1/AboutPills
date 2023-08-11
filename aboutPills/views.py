import json
from django.shortcuts import get_object_or_404, render
from django.http import HttpResponse
from rest_framework.response import Response
from rest_framework import viewsets
from .models import *
from .serializers import *
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.decorators import api_view
#from django.db import connection
import pymysql
from collections import OrderedDict
from django.contrib.auth.models import User
from django.contrib import auth


# Create your views here.
class resultsView(viewsets.ModelViewSet):
    queryset = Pills.objects.all()
    serializer_class = resultsSerializer
post_list = resultsView.as_view({
    'get': 'list',
    'post': 'create',})
    

class PostMemberView(viewsets.ModelViewSet):
    queryset = Member.objects.all()
    serializer_class = memberSerializer
join = PostMemberView.as_view({
    'post': 'create',})
memberAll = PostMemberView.as_view({
    'get': 'list',})

@api_view(['GET'])
def memberUid(request,uid):
    this_item = Member.objects.get(uid=uid)
    serializer = memberSerializer(this_item)
    return Response(serializer.data)

@api_view(['POST'])
def login(request):
    if request.method == "POST":
        uid = request.POST.get('uid')
        pwd = request.POST.get('pwd')
        print(uid)
        if Member.objects.filter(uid=uid).exists():
            getUser = Member.objects.get(uid=uid)
            context = {
                    "result" : "아이디는있"
                }
            if getUser.pwd == pwd : 
                request.session['loginOk'] = True
                context = {
                    "result" : "로그인 성공"
                }
                serializer = memberSerializer(getUser)
            else :
                request.session['loginOk'] = False
                context = {
                    "result" : "비밀번호가 틀렸습니다"
                }
        else :
            request.session['loginOk'] = False
            context = {
                "result" : "존재하지 않는 id입니다"
            }
        
        return HttpResponse(json.dumps(context),content_type="application/json")
        



class LikeView(viewsets.ModelViewSet):#찜 전체 리스트 post, get
    queryset = Likes.objects.all()
    serializer_class = LikeSerializer
zzimcoong = LikeView.as_view({
    'post': 'create',}) #쓸 일 거의 없음
zzimAll = LikeView.as_view({
    'get': 'list',})

    
    
class SolutionView(viewsets.ModelViewSet):
    queryset = Solution.objects.all()
    serializer_class = SolutionSerializer
    



@api_view(['GET'])
def UserPills(request,uid):
    query = "SELECT DISTINCT * FROM pills AS A INNER JOIN likes AS B ON A.id = B.pills_id AND B.uid = %s"
    qs = Pills.objects.raw(query,[uid])
    serializer = resultsSerializer(data=qs,many=True)
    if serializer.is_valid():
                serializer.save()
    return Response(serializer.data)


@api_view(['POST'])
def likePills(request):
    this_item = Likes.objects.all()
    serializer = LikeSerializer(this_item)
    return Response(serializer.data)

@api_view(['PATCH'])
def zzimPills(request,uid):
    query ="UPDATE aboutpills_db.pills AS A INNER JOIN aboutpills_db.likes AS B ON A.id=B.pills_id SET A.zzim=True WHERE B.uid=%s"
    qs = Pills.objects.raw(query,[uid])

    return HttpResponse("zzim update")

class PostLikeAPIView(viewsets.ModelViewSet):
    queryset = Pills.objects.all()
    serializer_class = resultsSerializer
    

post_detail = PostLikeAPIView.as_view({
    'get': 'retrieve',
    'put': 'update',
    'patch': 'partial_update',
    'delete': 'destroy',
})