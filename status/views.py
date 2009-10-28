# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
from django.template import RequestContext

from status.utils import get_most_followed_users, get_most_followed_projects, get_most_commented_projects, get_most_commented_posts

def stats(request):
    return render_to_response('status/stats.html',
                              {'title': 'Estatísticas do FEBRACEv',
                               'most_followed_projects': get_most_followed_projects(),
                               'most_commented_projects': get_most_commented_projects(),
                               'most_followed_users': get_most_followed_users(),
                               'most_commented_posts': get_most_commented_posts(),
                              },
                              context_instance = RequestContext(request))
