# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *

urlpatterns = patterns('friends.views',
    url(
        r'^following/(?P<username>\w+)/$',
        'friend_list',
        {'function_alias': 'following'},
        name='friends_following',
    ),
    url(
        r'^followers/(?P<username>\w+)/$',
        'friend_list',
        {'function_alias': 'followers'},
        name='friends_followers',
    ),
    url(
        r'^mutual/(?P<username>\w+)/$',
        'friend_list',
        {'function_alias': 'mutual'},
        name='friends_mutual',
    ),
    url(
        r'^add/(?P<username>\w+)/$',
        'add_friend',
        name='friends_add_friend',
    ),
    url(
        r'^remove/(?P<username>\w+)/$',
        'remove_friend',
        name='friends_remove_friend',
    ),
)
