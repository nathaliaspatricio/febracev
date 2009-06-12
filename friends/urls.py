# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns('friends.views',
    url(
        r'^following/(?P<username>[a-z]+)/$',
        'friend_list',
        {'function_alias': 'following'},
    ),
    url(
        r'^followers/(?P<username>[a-z]+)/$',
        'friend_list',
        {'function_alias': 'followers'},
    ),
    url(
        r'^mutual/(?P<username>[a-z]+)/$',
        'friend_list',
        {'function_alias': 'mutual'},
    ),
)
