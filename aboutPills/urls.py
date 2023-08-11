from django.urls import path,include
from . import  views
from rest_framework import routers
router = routers.DefaultRouter(trailing_slash=False)
# router.register('results',views.resultsView)
# router.register('results/putLike/<int:pk>/',views.PostLikeAPIView)
# router.register('solution',views.SolutionView)
urlpatterns = [
    #path('results/', include(router.urls)),
    path('results/',views.post_list),#GET,POST
    path('results/like/<int:pk>/',views.post_detail),#GET
    path('member/join/',views.join),#POST
    path('member/login/',views.login),#POST
    path('member/',views.memberAll),#GET
    path('member/<str:uid>/',views.memberUid),#GET
    path('likes/',views.zzimAll),#GET
    path('likes/<str:uid>/',views.UserPills),#GET2 pills의 seq으로 조건걸어서 가져오기
    path('zzim/',views.zzimcoong),#POST 찜하기(uid,pills_id)
    path('zzim/heart/<str:uid>',views.zzimPills),
    #path('pills/<str:id>/',views.zzim),#GET
    
]
