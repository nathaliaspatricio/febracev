from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext

from projects.models import Project, ProjectLink, CATEGORIES

def index(request):
    years = range(2003,2010)
    categories = list(CATEGORIES)
    return render_to_response('home/index.html',
                              {'years': years,
                               'categories': categories},
                              context_instance = RequestContext(request))

