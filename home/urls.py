from django.conf.urls.defaults import *
#from projects import views
 
urlpatterns = patterns('home.views',
    url(
        r'^$',
        'index',
        name='index'
    ),
)
