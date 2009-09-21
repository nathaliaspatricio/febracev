# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from datetime import datetime
from tagging.fields import TagField
from institutions.models import Institution

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
    slug = models.SlugField(unique=True, null=True, blank=True)
    name = models.CharField(max_length=255, blank=True)
    abstract = models.TextField(blank=True)
    students = models.ManyToManyField(User, related_name='students')
    advisors = models.ManyToManyField(User, related_name='advisors')
    institution = models.ForeignKey(Institution, blank=True, null=True)
    keywords = TagField()

    category = models.CharField(max_length=3, choices=CATEGORIES, blank=True, null=True)
    edition = models.CharField(max_length=4, null=True)
    code = models.CharField(max_length=3, null=True)

    video = models.CharField(max_length=47, blank=True)
    is_local = models.BooleanField(default=True)

    def __unicode__(self):
        return self.name

    class Meta:
        unique_together = (('category', 'edition', 'code'),)

    @models.permalink
    def get_absolute_url(self):
        if self.slug:
            return ('projects_project_detail_slug', (), {'slug': self.slug})
        else:
            return ('projects_project_detail', (), {'year': self.edition,
                                                    'category': self.category,
                                                    'code': self.code})

class Prize(models.Model):
    name = models.CharField(max_length=100, unique=True)
    institution = models.ForeignKey(Institution)
    description = models.TextField(blank=True)

    def __unicode__(self):
        return self.name

class ProjectLink(models.Model):
    user = models.ForeignKey(User)
    project = models.ForeignKey(Project)
    date_added = models.DateTimeField(default=datetime.now)

    def __unicode__(self):
        return u'%s é favorito de %s' % (self.project.name, self.user.username)

    class Meta:
        unique_together = (('user', 'project'),)

class PrizeLink(models.Model):
    prize = models.ForeignKey(Prize)
    project = models.ForeignKey(Project)
    date_added = models.DateTimeField(default=datetime.now)

    def __unicode__(self):
        return u'%s recebeu o prêmio de %s' % (self.project.name, self.prize.name)
