# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    (r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^admin/(.*)', admin.site.root),
    (r'^accounts/', include('registration.urls')),
    (r'^articles/', include('articles.urls')),
    (r'^comments/', include('django.contrib.comments.urls')),
    (r'^friends/', include('friends.urls')),
    (r'^institutions/', include('institutions.urls')),
    (r'^profiles/', include('profiles.urls')),
    (r'^projects/', include('projects.urls')),
    (r'^search/', include('search.urls')),
    (r'^tags/', include('tagging.urls')),
    (r'^$', include('home.urls')),
    (r'^media/(.*)$', 'django.views.static.serve',
     {'document_root': settings.MEDIA_ROOT}),
)
