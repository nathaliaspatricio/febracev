# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User

from datetime import datetime
from tagging.fields import TagField

class Article(models.Model):
    title = models.CharField(max_length=250, verbose_name='Título')
    slug = models.SlugField(unique_for_date='pub_date', verbose_name='Slug')
    author = models.ForeignKey(User, verbose_name='Autor')
    excerpt = models.TextField(blank=True, verbose_name='Resumo')
    body = models.TextField(verbose_name='Texto')
    pub_date = models.DateTimeField(default=datetime.now, verbose_name='Data de Publicação')
    enable_comments = models.BooleanField(default=True, verbose_name='Permitir comentários?')
    tags = TagField(verbose_name='Palavras-chave')

    class Meta:
        ordering = ['-pub_date']
        verbose_name='Artigo'

    def __unicode__(self):
        return self.title

    @models.permalink
    def get_absolute_url(self):
        return ('articles_article_detail', (), { 'object_id': self.id })
