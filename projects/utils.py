from projects.models import Project, ProjectLink, Prize, PrizeLink
from django.contrib.auth.models import User

def get_favorite_projects(user):
    pl = ProjectLink.objects.filter(user=user).values('project')
    return Project.objects.filter(id__in=[i['project'] for i in pl])

def is_favorite(visitor, project):
    return project in get_favorite_projects(visitor)

def get_prizes(project):
    pl = PrizeLink.objects.filter(project=project).values('prize')
    return Prize.objects.filter(id__in=[i['prize'] for i in pl])
