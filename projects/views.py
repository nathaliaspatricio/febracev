from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from django.http import Http404
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

from projects.models import Project, ProjectLink, CATEGORIES
from projects.utils import get_favorite_projects, is_favorite, get_prizes

def projects_main(request):
    years = range(2003,2010)
    categories = list(CATEGORIES)
    return render_to_response('projects/projects_main.html',
                              {'years': years,
                               'categories': categories},
                              context_instance = RequestContext(request))

def projects_by_year(request, year):
    if (int(year) < 2003 or int(year) > 2009):
        raise Http404
    else:
        return list_detail.object_list(
                   request,
                   queryset = Project.objects.filter(edition=year),
                   template_object_name = 'project',
                   extra_context = {'title': year}
               )

def projects_by_category(request, category):
    categories = dict(CATEGORIES)
    if (category not in categories.keys()):
        raise Http404
    else:
        return list_detail.object_list(
                   request,
                   queryset = Project.objects.filter(category=category),
                   template_object_name = 'project',
                   extra_context = {'title': categories[category]}
               )

def project_detail(request, year, category, code):
    project = get_object_or_404(Project, edition=year, category=category, code=code)

    visitor = request.user
    if visitor.is_authenticated():
        is_fav = is_favorite(visitor, project)
    else:
        is_fav = False

    student_list = project.students.all()
    advisor_list = project.advisors.all()
    prize_list   = get_prizes(project)

    users = list(student_list)+list(advisor_list)
    is_owner = visitor in users

    return render_to_response('projects/project_detail.html',
                              { 'project': project,
                                'is_favorite': is_fav,
                                'is_owner': is_owner,
                                'student_list': student_list,
                                'advisor_list': advisor_list, 
                                'prize_list': prize_list,
                              },
                              context_instance=RequestContext(request))

@login_required
def favorite_projects(request, username):
    user = get_object_or_404(User, username=username)
    return list_detail.object_list(
                request,
                queryset = get_favorite_projects(user),
                template_object_name = 'project',
                extra_context = {'title': username},
            )

@login_required
def add_favorite(request, year, category, code):
    visitor = request.user
    project = get_object_or_404(Project, edition=year, category=category, code=code)
    ProjectLink.objects.get_or_create(user=visitor, project=project)
    return redirect(project)

@login_required
def remove_favorite(request, year, category, code):
    visitor = request.user
    project = get_object_or_404(Project, edition=year, category=category, code=code)
    ProjectLink.objects.get(user=visitor, project=project).delete()
    return redirect(project)
