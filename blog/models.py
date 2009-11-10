# -*- coding: utf-8 -*-
from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.db.models import permalink
from django.contrib.auth.models import User
from tagging.fields import TagField
from blog.managers import PublicManager
from febracev.projects.models import Project

import tagging


class Category(models.Model):
    """Category model."""
    title       = models.CharField(_('title'), max_length=100)
    slug        = models.SlugField(_('slug'), unique=True)

    class Meta:
        verbose_name = 'Categoria'
        db_table = 'blog_categories'
        ordering = ('title',)

    class Admin:
        pass

    def __unicode__(self):
        return u'%s' % self.title

    @permalink
    def get_absolute_url(self):
        return ('blog_category_detail', None, {'slug': self.slug})


class Post(models.Model):
    """Post model."""
    STATUS_CHOICES = (
        (1, 'Rascunho'),
        (2, 'Público'),
    )
    title           = models.CharField(_('title'), max_length=200)
    slug            = models.SlugField(_('slug'), unique_for_date='publish')
    author          = models.ForeignKey(User, verbose_name='Autor')
    project         = models.ForeignKey(Project, verbose_name='Projeto')
    body            = models.TextField(verbose_name='Texto')
    tease           = models.TextField(blank=True, verbose_name='Resumo')
    status          = models.IntegerField(_('status'), choices=STATUS_CHOICES, default=2)
    allow_comments  = models.BooleanField(default=True, verbose_name='Permite comentários?')
    publish         = models.DateTimeField(verbose_name='Data de Publicação')
    created         = models.DateTimeField(auto_now_add=True, verbose_name='Data de Criação')
    modified        = models.DateTimeField(auto_now=True, verbose_name='Data de Modificação')
    categories      = models.ManyToManyField(Category, blank=True, verbose_name='Categorias')
    tags            = TagField(verbose_name='Palavras-chave')
    objects         = PublicManager()

    class Meta:
        verbose_name = 'Post'
        verbose_name_plural = 'Posts'
        db_table  = 'blog_posts'
        ordering  = ('-created',)
        get_latest_by = 'created'
        unique_together = (('slug', 'publish', 'project'),)

    class Admin:
        list_display  = ('title', 'publish', 'status')
        list_filter   = ('publish', 'categories', 'status')
        search_fields = ('title', 'body')

    def __unicode__(self):
        return u'%s' % self.title

    @permalink
    def get_absolute_url(self):
        if self.project.slug:
            return ('blog_detail_slug', None, {
                'project_slug': self.project.slug,
                'year': self.publish.year,
                'month': self.publish.strftime('%b').lower(),
                'day': self.publish.day,
                'slug': self.slug
            })
        else:
            return ('blog_detail', None, {
                'edition': self.project.edition,
                'category': self.project.category,
                'code': self.project.code,
                'year': self.publish.year,
                'month': self.publish.strftime('%b').lower(),
                'day': self.publish.day,
                'slug': self.slug
            }) 
    
    def get_previous_post(self):
        return self.get_previous_by_publish(status__gte=2)
    
    def get_next_post(self):
        return self.get_next_by_publish(status__gte=2)
