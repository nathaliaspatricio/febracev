# -*- coding: utf-8 -*-
from django.contrib.syndication.feeds import FeedDoesNotExist
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.sites.models import Site
from django.contrib.syndication.feeds import Feed
from django.core.urlresolvers import reverse

from articles.models import Article

class ArticleFeed(Feed):
    
    def link(self):
        return reverse('articles_article_list')

    def items(self):
        return Article.objects.all()[:10]

    def title(self):
        return u'Coluna da FEBRACE'

    def description(self):
        return u'Posts mais recentes'

    def item_pubdate(self, obj):
        return obj.pub_date

