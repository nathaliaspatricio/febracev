from django.conf.urls.defaults import *
from blog import views as blog_views
from blog.feeds import BlogPostsFeed

feeds = {
    'latest': BlogPostsFeed,
}


urlpatterns = patterns('',
    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{1,2})/(?P<slug>[-\w]+)/edit/$',
        view=blog_views.edit_post,
        name='blog_edit_post'),    

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{1,2})/(?P<slug>[-\w]+)/$',
        view=blog_views.post_detail,
        name='blog_detail'),

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/(?P<year>\d{4})/(?P<month>\w{3})/(?P<day>\d{1,2})/$',
        view=blog_views.post_archive_day,
        name='blog_archive_day'),

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/(?P<year>\d{4})/(?P<month>\w{3})/$',
        view=blog_views.post_archive_month,
        name='blog_archive_month'),

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/(?P<year>\d{4})/$',
        view=blog_views.post_archive_year,
        name='blog_archive_year'),

    url(r'^categories/(?P<slug>[-\w]+)/$',
        view=blog_views.category_detail,
        name='blog_category_detail'),

    url (r'^categories/$',
        view=blog_views.category_list,
        name='blog_category_list'),

    url (r'^search/$',
        view=blog_views.search,
        name='blog_search'),

    url(r'^page/(?P<page>\w)/$',
        view=blog_views.post_list,
        name='blog_index_paginated'),

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/$',
        view=blog_views.post_list,
        name='blog_index'),

    url(r'^(?P<edition>\d{4})/(?P<category>[A-Z]{3})/(?P<code>\d{3})/add/$',
        view=blog_views.add_post,
        name='blog_add_post'),

    url(r'^feed/(?P<url>.*)/$', 
        'django.contrib.syndication.views.feed', 
        {'feed_dict': feeds},
        name='blog_feed'),
)
