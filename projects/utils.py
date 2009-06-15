# -*- coding: utf-8 -*-
from projects.models import Project, ProjectLink
from django.contrib.auth.models import User

def get_favorite_projects(user):
    pl = ProjectLink.objects.filter(user=user).values('project')
    return Project.objects.filter(id__in=[i['project'] for i in pl])
