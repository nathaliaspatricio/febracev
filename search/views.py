# -*- coding: utf-8 -*-
from django.shortcuts import render_to_response
from django.template import RequestContext
from django.contrib.auth.decorators import login_required

from projects.models import Project
from profiles.models import UserProfile
from tagging.models import Tag
from articles.models import Article
from blog.models import Post

from search.utils import parse_search_input

def search(request, search_input):
    search_terms = parse_search_input(search_input)

    projects = Project.objects.none()
    profiles = UserProfile.objects.none()
    articles = Article.objects.none()
    tags = Tag.objects.none()
    posts = Post.objects.none()

    for term in search_terms:
        projects = projects | Project.objects.filter(name__contains=term)
        profiles = profiles | UserProfile.objects.filter(name__contains=term, is_active=True)
        articles = articles | Article.objects.filter(title__contains=term)
        tags = tags | Tag.objects.filter(name__contains=term)
        posts = posts | Post.objects.filter(title__contains=term)

    return render_to_response('search/search_results.html',
                              {'title': unicode(search_input),
                               'project_list': projects,
                               'profile_list': profiles,
                               'article_list': articles,
                               'tag_list': tags,
                               'post_list': posts,
                              },
                              context_instance = RequestContext(request))
