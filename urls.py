# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

from profiles.models import Institution

urlpatterns = patterns('',
    (r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^admin/(.*)', admin.site.root),
    (r'^comments/', include('django.contrib.comments.urls')),
    (r'^accounts/', include('registration.urls')),
    (r'^friends/', include('friends.urls')),
    (r'^profiles/', include('profiles.urls')),
    (r'^projects/', include('projects.urls')),
    (r'^search/', include('search.urls')),
    (r'^tags/', include('tagging.urls')),
    (r'^media/(.*)$', 'django.views.static.serve',
     {'document_root': settings.MEDIA_ROOT}),
)

urlpatterns += patterns('django.views.generic.list_detail',
    url(
        r'^institutions/$',
        'object_list',
        {'queryset': Institution.objects.all()},
        name='profiles_institution_list',
    ),
    url(
        r'^institutions/(?P<object_id>\d+)/$',
        'object_detail',
        {'queryset': Institution.objects.all()},
        name='profiles_institution_detail',
    )
)
