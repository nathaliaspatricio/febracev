# -*- coding: utf-8 -*-
from status.models import Status
from friends.models import FriendLink
from projects.models import ProjectLink, Project
from django.contrib.auth.models import User
from django.contrib.comments.models import Comment
from django.contrib.contenttypes.models import ContentType
from blog.models import Post

def get_most_followed_users():
    user_ids = FriendLink.objects.all().values_list('to_user', flat=True)
    user_count = {}
    for user_id in user_ids:
        try:
            user_count[ User.objects.get(pk=user_id) ] += 1
        except KeyError:
            user_count[ User.objects.get(pk=user_id) ] = 1

    user_list = user_count.items()
    user_list.sort(key=lambda(x): x[1], reverse=True)

    return user_list[:10]

def get_most_followed_projects():
    project_ids = ProjectLink.objects.all().values_list('project', flat=True)
    project_count = {}
    for project_id in project_ids:
        try:
            project_count[ Project.objects.get(pk=project_id) ] += 1
        except KeyError:
            project_count[ Project.objects.get(pk=project_id) ] = 1

    project_list = project_count.items()
    project_list.sort(key=lambda(x): x[1], reverse=True)

    return project_list[:10]

def get_most_commented_projects():
    content_type = ContentType.objects.get(name='project')
    project_ids = Comment.objects.filter(content_type=content_type).values_list('object_pk', flat=True)
    project_count = {}
    for project_id in project_ids:
        try:
            project_count[ Project.objects.get(pk=project_id) ] += 1
        except KeyError:
            project_count[ Project.objects.get(pk=project_id) ] = 1

    project_list = project_count.items()
    project_list.sort(key=lambda(x): x[1], reverse=True)

    return project_list[:5]
    
def get_most_commented_posts():
    content_type = ContentType.objects.get(name='post')
    post_ids = Comment.objects.filter(content_type=content_type).values_list('object_pk', flat=True)
    post_count = {}
    for post_id in post_ids:
        try:
            post_count[ Post.objects.get(pk=post_id) ] += 1
        except KeyError:
            post_count[ Post.objects.get(pk=post_id) ] = 1

    post_list = post_count.items()
    post_list.sort(key=lambda(x): x[1], reverse=True)

    return post_list[:5]

def daily_register():
    project_count = Project.objects.count()
    user_count = User.objects.filter(is_active=True).count()
    Status.objects.create(project_count=project_count,user_count=user_count)
