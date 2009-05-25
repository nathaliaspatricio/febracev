from django.db import models
from django.contrib.auth.models import User
from django.contrib import admin

class Project(models.Model):
    name = models.CharField(max_length=200)
    abstract = models.TextField()
    students = models.ManyToManyField(User, related_name='students')
    advisors = models.ManyToManyField(User, related_name='advisors')
    institution = models.CharField(max_length=100)
    category = models.CharField(max_length=50)
    subcategory = models.CharField(max_length=50)
    keywords = models.CharField(max_length=100)

    edition = models.IntegerField()
    code = models.CharField(max_length=6)

    video = models.CharField(max_length=47)

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('project.views.project_detail', (), {'year': self.edition, 'code': self.code})

admin.site.register(Project)
