# -*- coding: utf-8 -*-
from django.contrib.auth.models import User
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from friends.utils import get_following_set, get_follower_set, get_mutual_set

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
