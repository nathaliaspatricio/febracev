# -*- coding: utf-8 -*-
from django.contrib.syndication.feeds import FeedDoesNotExist
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.sites.models import Site
from django.contrib.syndication.feeds import Feed
from django.core.urlresolvers import reverse

from blog.models import Post, Category
from projects.models import Project

class BlogPostsFeed(Feed):
    
    def get_object(self, bits):
        if len(bits) != 3:
            raise ObjectDoesNotExist
        edition, category, code = bits
        return Project.objects.get(edition=edition,category=category,code=code)

    def link(self, obj):
        kwargs = {'edition': obj.edition, 'category': obj.category, 'code': obj.code}
        return reverse('blog_index', kwargs=kwargs)

    def items(self, obj):
        return Post.objects.published(obj)[:10]

    def title(self, obj):
        return u'Diário de bordo do projeto %s' % obj.name

    def description(self, obj):
        return u'Posts mais recentes'

    def item_pubdate(self, obj):
        return obj.publish


class BlogPostsByCategory(Feed):
    _site = Site.objects.get_current()
    title = '%s posts category feed' % _site.name
    
    def get_object(self, bits):
        if len(bits) != 1:
            raise ObjectDoesNotExist
        return Category.objects.get(slug__exact=bits[0])

    def link(self, obj):
        if not obj:
            raise FeedDoesNotExist
        return obj.get_absolute_url()

    def description(self, obj):
        return "Posts recently categorized as %s" % obj.title
    
    def items(self, obj):
        return obj.post_set.published()[:10]
