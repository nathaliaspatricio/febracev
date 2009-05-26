# -*- coding: utf-8 -*-
from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render_to_response
from django.template import RequestContext

from projects.models import Project

def projects_by_year(request, year):
    project_list = Project.objects.filter(edition=year)
    return render_to_response('projects/year_list.html',
                              {'project_list': project_list},
                              context_instance = RequestContext(request))

def project_detail(request, year, code):
    project = get_object_or_404(Project, edition=year, code=code)
    return render_to_response('projects/project_detail.html',
                              {'project': project},
                              context_instance = RequestContext(request))
