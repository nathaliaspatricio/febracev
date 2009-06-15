# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.contrib.auth.decorators import login_required

from projects.models import Project
from django.contrib.auth.models import User

from search.utils import parse_search_input

def search(request, search_input):
    search_terms = parse_search_input(search_input)
    projects = Project.objects.none()
    users = User.objects.none()

    for term in search_terms:
        projects = projects | Project.objects.filter(name__contains=term)
        users = users | User.objects.filter(username__contains=term)

    return render_to_response('search/search_results.html',
                              {'title': unicode(search_input),
                               'project_list': projects,
                               'user_list': users,
                              },
                              context_instance = RequestContext(request))
