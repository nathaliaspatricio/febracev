from django.conf.urls.defaults import *
from projects.models import Project
from tagging.models import Tag

urlpatterns = patterns('',
    url(
        r'^$',
        'django.views.generic.list_detail.object_list',
        { 'queryset': Tag.objects.all() }
    ),
    url(
        r'^(?P<tag>[-\w\s]+)/$',
        'tagging.views.tag_detail',
        name = 'tagging_tag_detail',
    ),
    url(
        r'^projects/(?P<tag>[-\w]+)/$',
        'tagging.views.tagged_object_list',
        { 'queryset_or_model': Project,
        'template_name': 'projects/projects_by_tag.html' }
    ),
)
