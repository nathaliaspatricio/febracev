# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
from django.conf import settings

from articles.models import Article

urlpatterns = patterns('django.views.generic.list_detail',
    url(
        r'^$',
        'object_list',
        {'queryset': Article.objects.all()},
        name='articles_article_list',
    ),
    url(
        r'^(?P<object_id>\d+)/$',
        'object_detail',
        {'queryset': Article.objects.all()},
        name='articles_article_detail',
    )
)
