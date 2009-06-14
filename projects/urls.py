from django.conf.urls.defaults import *
#from projects import views

urlpatterns = patterns('projects.views',
    url(
        r'^$',
        'projects_main',
        name='projects_main'
    ),
    url(
        r'^(?P<year>\d{4})/$',
        'projects_by_year',
        name='projects_by_year'
    ),
    url(
        r'^(?P<category>[A-Z]{3})/$',
       'projects_by_category',
        name='projects_by_category'
    ),
    url(
        r'^(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$',
        'project_detail',
    ),
    url(
        r'^(?P<username>[a-z]+)/$',
        'favorite_projects',
    ),
)
