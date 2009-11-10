# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from datetime import datetime
from tagging.fields import TagField
from institutions.models import Institution
from profiles.models import UserProfile

CATEGORIES = (
        (u'AGR', u'Ciências Agrárias'),
        (u'BIO', u'Ciências Biológicas'),
        (u'ENG', u'Engenharias'),
        (u'EXA', u'Ciências Exatas e da Terra'),
        (u'HUM', u'Ciências Humanas'),
        (u'SAU', u'Ciências da Saúde'),
        (u'SOC', u'Ciências Sociais Aplicadas'),
)

class Project(models.Model):
    slug = models.SlugField(unique=True, null=True, blank=True, verbose_name='Slug')
    name = models.CharField(max_length=255, blank=True, verbose_name='Nome')
    abstract = models.TextField(blank=True, verbose_name='Resumo')
    students = models.ManyToManyField(UserProfile, related_name='students', verbose_name='Estudantes')
    advisors = models.ManyToManyField(UserProfile, related_name='advisors', verbose_name='Orientadores')
    institution = models.ForeignKey(Institution, blank=True, null=True, verbose_name='Instituição')
    keywords = TagField(verbose_name='Palavras-chave')

    category = models.CharField(max_length=3, choices=CATEGORIES, blank=True, null=True, verbose_name='Categoria')
    edition = models.CharField(max_length=4, null=True, verbose_name='Ano')
    code = models.CharField(max_length=3, null=True, verbose_name='Código')

    video = models.CharField(max_length=47, blank=True, verbose_name='Vídeo')
    is_local = models.BooleanField(default=True, verbose_name='Local?')

    def __unicode__(self):
        return self.name

    class Meta:
        unique_together = (('category', 'edition', 'code'),)
        verbose_name='Projeto'

    @models.permalink
    def get_absolute_url(self):
        if self.slug:
            return ('projects_project_detail_slug', (), {'slug': self.slug})
        else:
            return ('projects_project_detail', (), {'year': self.edition,
                                                    'category': self.category,
                                                    'code': self.code})
            

class Prize(models.Model):
    name = models.CharField(max_length=100, unique=True, verbose_name='Nome')
    institution = models.ForeignKey(Institution, verbose_name='Instituição')
    description = models.TextField(blank=True, verbose_name='Descrição')

    def __unicode__(self):
        return self.name

    class Meta:
        verbose_name='Prêmio'

class ProjectLink(models.Model):
    user = models.ForeignKey(User, verbose_name='Usuário')
    project = models.ForeignKey(Project, verbose_name='Projeto')
    date_added = models.DateTimeField(default=datetime.now, verbose_name='Data de Adição')

    def __unicode__(self):
        return u'%s é favorito de %s' % (self.project.name, self.user.username)

    class Meta:
        unique_together = (('user', 'project'),)
        verbose_name='Projeto Favorito'
        verbose_name_plural='Projetos Favoritos'

class PrizeLink(models.Model):
    prize = models.ForeignKey(Prize, verbose_name='Prêmio')
    project = models.ForeignKey(Project, verbose_name='Projeto')
    date_added = models.DateTimeField(default=datetime.now, verbose_name='Data de Adição')

    def __unicode__(self):
        return u'%s recebeu o prêmio de %s' % (self.project.name, self.prize.name)

    class Meta:
        verbose_name='Projeto com prêmio'
        verbose_name_plural='Projetos com prêmios'
