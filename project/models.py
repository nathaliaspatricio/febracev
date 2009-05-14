from django.db import models
from django.contrib.auth.models import User
from django.contrib import admin

class Project(models.Model):
    name = models.CharField(max_length=100)
    abstract = models.TextField()
    students = models.ManyToManyField(User, related_name='students')
    advisors = models.ManyToManyField(User, related_name='advisors')
    institution = models.CharField(max_length=100)
    category = models.CharField(max_length=50)
    subcategory = models.CharField(max_length=50)
    keywords = models.CharField(max_length=100)

    def __unicode__(self):
        return self.name

admin.site.register(Project)
