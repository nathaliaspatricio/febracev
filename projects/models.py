# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from django.contrib import admin

CATEGORIES = (
        ('AGR', 'Ciências Agrárias'),
        ('BIO', 'Ciências Biológicas'),
        ('ENG', 'Engenharias'),
        ('EXA', 'Ciências Exatas e da Terra'),
        ('HUM', 'Ciências Humanas'),
        ('SAU', 'Ciências da Saúde'),
        ('SOC', 'Ciências Sociais Aplicadas'),
)

class Project(models.Model):
    name = models.CharField(max_length=200)
    abstract = models.TextField()
    students = models.ManyToManyField(User, related_name='students')
    advisors = models.ManyToManyField(User, related_name='advisors')
    institution = models.CharField(max_length=100)
    category = models.CharField(max_length=3, choices=CATEGORIES)
    #subcategory = models.CharField(max_length=50)
    keywords = models.CharField(max_length=100)

    edition = models.CharField(max_length=4)
    code = models.CharField(max_length=3)

    video = models.CharField(max_length=47)

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('projects.views.project_detail', (), {'year': self.edition,
                                                      'category': self.category,
                                                      'code': self.code})

admin.site.register(Project)
