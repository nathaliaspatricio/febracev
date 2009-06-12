# -*- coding: utf-8 -*-
from friends.models import FriendLink
from django.contrib.auth.models import User

def get_following_set(user):
    fl = FriendLink.objects.filter(from_user=user).values('to_user')
    return User.objects.filter(id__in=[i['to_user'] for i in fl])

def get_follower_set(user):
    fl = FriendLink.objects.filter(to_user=user).values('from_user')
    return User.objects.filter(id__in=[i['from_user'] for i in fl])

def get_mutual_set(user):
    following = FriendLink.objects.filter(from_user=user).values('to_user')
    following_set = User.objects.filter(id__in=[i['to_user'] for i in following])

    followers = FriendLink.objects.filter(to_user=user).values('from_user')
    followers_set = User.objects.filter(id__in=[i['from_user'] for i in
                                                followers])

    mutual_set = set(following_set).intersection(set(followers_set))

    return list(mutual_set)
