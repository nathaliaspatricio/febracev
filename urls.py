from django.conf.urls.defaults import *
from django.conf import settings
from projects.models import Project
from tagging.models import Tag

# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Example:
    # (r'^febracev/', include('febracev.foo.urls')),

    # Uncomment the admin/doc line below and add 'django.contrib.admindocs'
    # to INSTALLED_APPS to enable admin documentation:
    # (r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    (r'^admin/(.*)', admin.site.root),
    (r'^comments/', include('django.contrib.comments.urls')),
    (r'^accounts/', include('registration.urls')),
    (r'^friends/', include('friends.urls')),
    (r'^profiles/', include('profiles.urls')),
    (r'^projects/', include('projects.urls')),
    (r'^media/(.*)$', 'django.views.static.serve',
     {'document_root': settings.MEDIA_ROOT}),
    (r'^tags/$',
     'django.views.generic.list_detail.object_list',
     { 'queryset': Tag.objects.all() }),
    (r'^tags/projects/(?P<tag>[-\w]+)/$',
     'tagging.views.tagged_object_list',
     { 'queryset_or_model': Project,
     'template_name': 'projects/projects_by_tag.html' }),
)
