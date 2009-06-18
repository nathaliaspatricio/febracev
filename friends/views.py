# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.shortcuts import render_to_response, get_object_or_404, redirect
from django.template import RequestContext
from friends.utils import get_following_set, get_follower_set, get_mutual_set
from django.contrib.auth.decorators import login_required
from friends.models import FriendLink

FRIEND_FUNCTION_MAP = {
    'followers': get_follower_set,
    'following': get_following_set,
    'mutual': get_mutual_set,
}

def friend_list(request, username, function_alias):
    user = get_object_or_404(User, username=username)
    context = {'friend_list': FRIEND_FUNCTION_MAP[function_alias](user)}
    return render_to_response('friends/friend_list.html',
                              context,
                              context_instance = RequestContext(request))

@login_required
def add_friend(request, username):
    user = request.user
    friend = get_object_or_404(User, username=username)
    FriendLink.objects.get_or_create(from_user=user, to_user=friend)
    return redirect(friend.get_profile())

@login_required
def remove_friend(request, username):
    user = request.user
    friend = get_object_or_404(User, username=username)
    FriendLink.objects.get(from_user=user, to_user=friend).delete()
    return redirect(friend.get_profile())
