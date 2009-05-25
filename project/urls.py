from django.conf.urls.defaults import *
from project import views

urlpatterns = patterns('',
    (r'^(?P<year>\d{4})/$', views.projects_by_year),
    (r'^(?P<year>\d{4})/(?P<code>\w{6})/$', views.project_detail),
)
