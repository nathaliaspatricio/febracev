# -*- coding: utf-8 -*-
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.template import RequestContext

from project.models import Project

def projects_by_year(request, year):
    project_list = Project.objects.filter(edition=year)
    return render_to_response('project/year_list.html',
                              {'project_list': project_list},
                              context_instance = RequestContext(request))

def project_detail(request, year, code):
    pj = get_object_or_404(Project, edition=year, code=code)
    return render_to_response('project/project_detail.html',
                              {'project': pj},
                              context_instance = RequestContext(request))
