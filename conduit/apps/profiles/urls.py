from django.urls import re_path

app_name = 'profiles'

from .views import ProfileRetrieveAPIView, ProfileFollowAPIView

urlpatterns = [
    re_path(r'^profiles/(?P<username>\w+)/?$', ProfileRetrieveAPIView.as_view()),
    re_path(r'^profiles/(?P<username>\w+)/follow/?$',
        ProfileFollowAPIView.as_view()),
]
