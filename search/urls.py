# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
#from projects import views

urlpatterns = patterns('search.views',
    url(
        r'^(?P<search_input>[-\w\s"]+)/$',
        'search',
    ),
)
