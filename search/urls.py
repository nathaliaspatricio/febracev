# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
#from projects import views

urlpatterns = patterns('search.views',
    url(
        r'^site/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'site': True },
        name='search_site',
    ),
    url(
        r'^projects/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'projects': True },
        name='search_projects',
    ),
    url(
        r'^profiles/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'profiles': True },
        name='search_profiles',
    ),
    url(
        r'^articles/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'articles': True },
        name='search_articles',
    ),
    url(
        r'^tags/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'tags': True },
        name='search_tags',
    ),
    url(
        r'^posts/(?P<search_input>[-\w\s"]+)/$',
        'search',
        { 'posts': True },
        name='search_posts',
    ),
)
