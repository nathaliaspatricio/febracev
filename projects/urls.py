from django.conf.urls.defaults import *
from projects import views

urlpatterns = patterns('',
    (r'^(?P<year>\d{4})/$', views.projects_by_year),
    (r'^(?P<category>[A-Z]{3})/$', views.projects_by_category),
    (r'^(?P<year>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$', views.project_detail),
)
