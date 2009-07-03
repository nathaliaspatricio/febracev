from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from random import randint

from articles.models import Article
from projects.models import Project

def index(request):
    article_list = Article.objects.all()
    length = len(Project.objects.all())
    key = randint(1,length)
    project = Project.objects.get(pk=key)
    student_list = project.students.all()
    advisor_list = project.advisors.all()
    return render_to_response('home/index.html',
                              {'article_list': article_list[:5],
                               'project': project,
                               'student_list': student_list,
                               'advisor_list': advisor_list, 
                              },
                              context_instance = RequestContext(request))

