from projects.models import Project, ProjectLink, Prize, PrizeLink
from django.contrib import admin

admin.site.register(Prize)
admin.site.register(Project)
admin.site.register(ProjectLink)
admin.site.register(PrizeLink)
