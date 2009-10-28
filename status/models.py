# -*- coding: utf-8 -*-
from django.db import models
from datetime import datetime

class Status(models.Model):
    project_count = models.PositiveIntegerField(max_length=5)
    user_count    = models.PositiveIntegerField(max_length=5)
    date_created  = models.DateTimeField(default=datetime.now())

    def __unicode__(self):
        return str(self.date_created.date())

    class Meta():
        verbose_name_plural = 'Status'
