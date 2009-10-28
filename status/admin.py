# -*- coding: utf-8 -*-
from status.models import Status
from django.contrib import admin

class StatusAdmin(admin.ModelAdmin):
    list_display = ('__unicode__', 'project_count', 'user_count')

admin.site.register(Status, StatusAdmin)

