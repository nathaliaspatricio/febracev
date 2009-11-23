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

def search(request, search_input, site=False, projects=False, profiles=False, articles=False, tags=False, posts=False):
    search_terms = parse_search_input(search_input)

    project_list = Project.objects.none()
    profile_list = UserProfile.objects.none()
    article_list = Article.objects.none()
    tag_list = Tag.objects.none()
    post_list = Post.objects.none()

    for term in search_terms:
            project_list = [ project_list, project_list|Project.objects.filter(name__contains=term) ][ site|projects ]
            profile_list = [ profile_list, profile_list|UserProfile.objects.filter(name__contains=term, is_active=True) ][ site|profiles ]
            article_list = [ article_list, article_list|Article.objects.filter(title__contains=term) ][ site|articles ]
            tag_list = [ tag_list, tag_list|Tag.objects.filter(name__contains=term) ][ site|tags ]
            post_list = [ post_list, post_list|Post.objects.filter(title__contains=term) ][ site|posts ]

    return render_to_response('search/search_results.html',
                              {'title': unicode(search_input),
                               'site': site,
                               'projects': projects,
                               'profiles': profiles,
                               'articles': articles,
                               'tags': tags,
                               'posts': posts,
                               'project_list': project_list,
                               'profile_list': profile_list,
                               'article_list': article_list,
                               'tag_list': tag_list,
                               'post_list': post_list,
                              },
                              context_instance = RequestContext(request))
