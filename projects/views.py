from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from django.http import Http404, HttpResponseRedirect
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required

from tagging.utils import get_tag_list

from projects.models import Project, ProjectLink, CATEGORIES
from projects.utils import get_favorite_projects, is_favorite, get_prizes
from projects.forms import ProjectForm

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
                   extra_context = {'title': year, 'year': year}
               )

def project_by_year_and_category(request, year, category):
    if (int(year) < 2003 or int(year) > 2009):
        raise Http404
    categories = dict(CATEGORIES)
    if (category not in categories.keys()):
        raise Http404
    else:
        return list_detail.object_list(
           request,
           queryset = Project.objects.filter(category=category, edition=year),
           template_object_name = 'project',
           extra_context = {'title': year + " | " +categories[category],
                            'year': year,
                            'category': category
                            }
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

def project_detail(request, year=None, category=None, code=None, slug=None):
    if slug:
        project = get_object_or_404(Project, slug=slug)
    else:
        project = get_object_or_404(Project, edition=year, category=category, code=code)

    visitor = request.user
    student_list = project.students.all()
    advisor_list = project.advisors.all()
    prize_list   = get_prizes(project)
    tag_list     = get_tag_list(project.keywords)

    users = list(student_list)+list(advisor_list)

    if visitor.is_authenticated():
        is_fav = is_favorite(visitor, project)
        is_owner = visitor.get_profile() in users
    else:
        is_fav = is_owner = False

    return render_to_response('projects/project_detail.html',
                              { 'project': project,
                                'is_favorite': is_fav,
                                'is_owner': is_owner,
                                'student_list': student_list,
                                'advisor_list': advisor_list,
                                'prize_list': prize_list,
                                'tag_list': tag_list,
                                'title': project.name,
                                'year': project.edition,
                                'category': project.category,
                                'code': project.code,
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
def add_favorite(request, year=None, category=None, code=None, slug=None):
    visitor = request.user
    if slug:    
        project = get_object_or_404(Project, slug=slug)
    else:
        project = get_object_or_404(Project, edition=year, category=category, code=code)
    ProjectLink.objects.get_or_create(user=visitor, project=project)
    return redirect(project)

@login_required
def remove_favorite(request, year=None, category=None, code=None, slug=None):
    visitor = request.user
    if slug:    
        project = get_object_or_404(Project, slug=slug)
    else:
        project = get_object_or_404(Project, edition=year, category=category, code=code)
    ProjectLink.objects.get(user=visitor, project=project).delete()
    return redirect(project)

@login_required
def request_project(request):
    return render_to_response('projects/request_project.html',
                              {'visitor': request.user.get_profile() },
                              context_instance = RequestContext(request))

@login_required
def new_project(request):
    if request.method == 'POST':
        form = ProjectForm(data=request.POST, files=request.FILES)
        if form.is_valid():
            project = form.save()
            if request.POST.get("role") == "O": 
                project.advisors.add(request.user.get_profile())
            if request.POST.get("role") == "E":
                project.students.add(request.user.get_profile())
            project.save()
            return HttpResponseRedirect(project.get_absolute_url)
    else:
        form = ProjectForm()  
    return render_to_response('projects/new_project.html',
                              {'form': form},
                              context_instance = RequestContext(request))

