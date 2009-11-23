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
        r'^(?P<year>\d{4})/(?P<category>[A-Z]{3})/$',
        'project_by_year_and_category',
        name='projects_project_by_year_and_category'
    ),
    url(
        r'^(?P<category>[A-Z]{3})/$',
       'projects_by_category',
        name='projects_by_category'
    ),
    url(
        r'^(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$',
        'project_detail',
        name='projects_project_detail'
    ),
    url(
        r'^slug/(?P<slug>[a-z0-9-_]+)/$',
        'project_detail',
        name='projects_project_detail_slug'
    ),
    url(
        r'^favorites/(?P<username>\w+)/$',
        'favorite_projects',
        name='projects_favorite_projects'
    ),
    url(
        r'^favorites/add/(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$',
        'add_favorite',
        name='projects_add_favorite',
    ),
    url(
        r'^favorites/remove/(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$',
        'remove_favorite',
        name='projects_remove_favorite',
    ),
    url(
        r'^favorites/add/(?P<slug>[a-z0-9-_]+)/$',
        'add_favorite',
        name='projects_add_favorite_slug',
    ),
    url(
        r'^favorites/remove/(?P<slug>[a-z0-9-_]+)/$',
        'remove_favorite',
        name='projects_remove_favorite_slug',
    ),
)
urlpatterns += patterns('projects.views',
    url(
        r'^request/$',
        'request_project',
        name='projects_request_project'
    ),
    url(
        r'^new/$',
        'new_project',
        name='projects_new_project'
    ),
#    url(
#        r'^slug/(?P<slug>[a-z0-9-_]+)/edit/$',
#        'edit_project',
#        name='projects_edit_project'
#    ),
#    url(
#        r'^(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/edit/$',
#        'edit_project',
#        name='projects_edit_project'
#    ),
)
