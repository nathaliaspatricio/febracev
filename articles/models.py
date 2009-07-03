# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User

from datetime import datetime
from tagging.fields import TagField

class Article(models.Model):
    title = models.CharField(max_length=250)
    slug = models.SlugField(unique_for_date='pub_date')
    author = models.ForeignKey(User)
    excerpt = models.TextField(blank=True)
    body = models.TextField()
    pub_date = models.DateTimeField(default=datetime.now)
    enable_comments = models.BooleanField(default=True)
    tags = TagField()

    class Meta:
        ordering = ['-pub_date']

    def __unicode__(self):
        return self.title

    @models.permalink
    def get_absolute_url(self):
        return ('articles_article_detail', (), { 'object_id': self.id })
