# -*- coding: utf-8 -*-
from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response
from django.template import RequestContext

from projects.models import Project

def projects_by_year(request, year):
   return list_detail.object_list(
               request,
               queryset = Project.objects.filter(edition=year),
               template_object_name = 'project',
               extra_context = {'title': year}
           )

def projects_by_category(request, category):
   return list_detail.object_list(
               request,
               queryset = Project.objects.filter(category=category),
               template_object_name = 'project',
               extra_context = {'title': category}
           )

def project_detail(request, year, category, code):
    project = get_object_or_404(Project, edition=year, category=category, code=code)
    return render_to_response('projects/project_detail.html',
                              {'project': project},
                              context_instance = RequestContext(request))
