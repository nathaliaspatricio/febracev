from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from django.http import Http404, HttpResponseRedirect
from django.views.generic import date_based, list_detail
from django.db.models import Q
from django.db import IntegrityError
from blog.models import *
from blog.forms import AddPostForm, EditPostForm
from django.contrib.auth.decorators import login_required

import datetime
import time
import re

@login_required
def add_post(request, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)
    user_profile = request.user.get_profile()
    user_projects = list(user_profile.students.all()) + list(user_profile.advisors.all())
    if not project in user_projects:
        raise Http404
    else:
        if request.method == 'POST':
            form = AddPostForm(data=request.POST)
            if form.is_valid():
                post = form.save(commit=False)
                post.author = request.user
                post.project = project
                post.publish = datetime.datetime.now()
                try:
                    post.save()
                    return HttpResponseRedirect('/')
                except IntegrityError:
                    form.errors['slug'] = [u'Slug repetido.']
        else:
            form = AddPostForm()

        return render_to_response('blog/add_post.html',
                                  { 'form': form },
                                    context_instance=RequestContext(request))
@login_required
def edit_post(request, slug, year, month, day, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    visitor = request.user.get_profile()
    student_list = project.students.all()
    advisor_list = project.advisors.all()

    users = list(student_list)+list(advisor_list)
    is_owner = visitor in users

    if is_owner:
        tt = time.strptime('%s%s%s' % (year, month, day) , '%Y%b%d')
        date = datetime.date(*tt[:3])
        post_list = Post.objects.published(project).filter(slug=slug, publish__year=date.year, publish__month=date.month, publish__day=date.day)
        post = post_list[0]

        if request.method == 'POST':
            form = EditPostForm(data=request.POST, instance=post)
            if form.is_valid():
                post = form.save()
                return HttpResponseRedirect('/')
        else:
            form = EditPostForm(instance=post)

        return render_to_response('blog/add_post.html',
                                  { 'form': form },
                                    context_instance=RequestContext(request))
    else:
        raise Http404

def post_list(request, edition=None, category=None, code=None, project_slug=None, page=0, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    feed_url = "latest/%s/%s/%s" % (edition, category, code)
    return list_detail.object_list(
        request,
        queryset = Post.objects.published(project),
        paginate_by = 20,
        page = page,
        extra_context= {'feed_url': feed_url,
                        'project': project,
                        },
        **kwargs
    )
post_list.__doc__ = list_detail.object_list.__doc__


def post_archive_year(request, year, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    return date_based.archive_year(
        request,
        year = year,
        date_field = 'publish',
        queryset = Post.objects.published(project),
        make_object_list = True,
        **kwargs
    )
post_archive_year.__doc__ = date_based.archive_year.__doc__


def post_archive_month(request, year, month, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    return date_based.archive_month(
        request,
        year = year,
        month = month,
        date_field = 'publish',
        queryset = Post.objects.published(project),
        **kwargs
    )
post_archive_month.__doc__ = date_based.archive_month.__doc__


def post_archive_day(request, year, month, day, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    return date_based.archive_day(
        request,
        year = year,
        month = month,
        day = day,
        date_field = 'publish',
        queryset = Post.objects.published(project),
        **kwargs
    )
post_archive_day.__doc__ = date_based.archive_day.__doc__


def post_detail(request, slug, year, month, day, edition=None, category=None, code=None, project_slug=None, **kwargs):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    if not request.user.is_anonymous():
        visitor = request.user.get_profile()
        student_list = project.students.all()
        advisor_list = project.advisors.all()

        users = list(student_list)+list(advisor_list)
        is_owner = visitor in users
    else:
        is_owner = False

    post_url =  request.path

    return date_based.object_detail(
        request,
        year = year,
        month = month,
        day = day,
        date_field = 'publish',
        slug = slug,
        queryset = Post.objects.published(project),
        extra_context= {'is_owner': is_owner, 'project': project, 'month': month, 'post_url': post_url},
        **kwargs
    )
post_detail.__doc__ = date_based.object_detail.__doc__


def category_list(request, template_name = 'blog/category_list.html', **kwargs):
    """
    Category list

    Template: ``blog/category_list.html``
    Context:
        object_list
            List of categories.
    """
    return list_detail.object_list(
        request,
        queryset = Category.objects.all(),
        template_name = template_name,
        **kwargs
    )

def category_detail(request, slug, template_name = 'blog/category_detail.html', **kwargs):
    """
    Category detail

    Template: ``blog/category_detail.html``
    Context:
        object_list
            List of posts specific to the given category.
        category
            Given category.
    """
    category = get_object_or_404(Category, slug__iexact=slug)

    return list_detail.object_list(
        request,
        queryset = category.post_set.published(),
        extra_context = {'category': category},
        template_name = template_name,
        **kwargs
    )


# Stop Words courtesy of http://www.dcs.gla.ac.uk/idom/ir_resources/linguistic_utils/stop_words
STOP_WORDS = r"""\b(a|about|above|across|after|afterwards|again|against|all|almost|alone|along|already|also|
although|always|am|among|amongst|amoungst|amount|an|and|another|any|anyhow|anyone|anything|anyway|anywhere|are|
around|as|at|back|be|became|because|become|becomes|becoming|been|before|beforehand|behind|being|below|beside|
besides|between|beyond|bill|both|bottom|but|by|call|can|cannot|cant|co|computer|con|could|couldnt|cry|de|describe|
detail|do|done|down|due|during|each|eg|eight|either|eleven|else|elsewhere|empty|enough|etc|even|ever|every|everyone|
everything|everywhere|except|few|fifteen|fify|fill|find|fire|first|five|for|former|formerly|forty|found|four|from|
front|full|further|get|give|go|had|has|hasnt|have|he|hence|her|here|hereafter|hereby|herein|hereupon|hers|herself|
him|himself|his|how|however|hundred|i|ie|if|in|inc|indeed|interest|into|is|it|its|itself|keep|last|latter|latterly|
least|less|ltd|made|many|may|me|meanwhile|might|mill|mine|more|moreover|most|mostly|move|much|must|my|myself|name|
namely|neither|never|nevertheless|next|nine|no|nobody|none|noone|nor|not|nothing|now|nowhere|of|off|often|on|once|
one|only|onto|or|other|others|otherwise|our|ours|ourselves|out|over|own|part|per|perhaps|please|put|rather|re|same|
see|seem|seemed|seeming|seems|serious|several|she|should|show|side|since|sincere|six|sixty|so|some|somehow|someone|
something|sometime|sometimes|somewhere|still|such|system|take|ten|than|that|the|their|them|themselves|then|thence|
there|thereafter|thereby|therefore|therein|thereupon|these|they|thick|thin|third|this|those|though|three|through|
throughout|thru|thus|to|together|too|top|toward|towards|twelve|twenty|two|un|under|until|up|upon|us|very|via|was|
we|well|were|what|whatever|when|whence|whenever|where|whereafter|whereas|whereby|wherein|whereupon|wherever|whether|
which|while|whither|who|whoever|whole|whom|whose|why|will|with|within|without|would|yet|you|your|yours|yourself|
yourselves)\b"""


def search(request, template_name='blog/post_search.html'):
    """
    Search for blog posts.

    This template will allow you to setup a simple search form that will try to return results based on
    given search strings. The queries will be put through a stop words filter to remove words like
    'the', 'a', or 'have' to help imporve the result set.

    Template: ``blog/post_search.html``
    Context:
        object_list
            List of blog posts that match given search term(s).
        search_term
            Given search term.
    """
    context = {}
    if request.GET:
        stop_word_list = re.compile(STOP_WORDS, re.IGNORECASE)
        search_term = '%s' % request.GET['q']
        cleaned_search_term = stop_word_list.sub('', search_term)
        cleaned_search_term = cleaned_search_term.strip()
        if len(cleaned_search_term) != 0:
            post_list = Post.objects.published().filter(Q(body__icontains=cleaned_search_term) | Q(tags__icontains=cleaned_search_term) | Q(categories__title__icontains=cleaned_search_term))
            context = {'object_list': post_list, 'search_term':search_term}
        else:
            message = 'Search term was too vague. Please try again.'
            context = {'message':message}
    return render_to_response(template_name, context, context_instance=RequestContext(request))
