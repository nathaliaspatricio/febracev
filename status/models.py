# -*- coding: utf-8 -*-
from django.db import models
from datetime import datetime

class Status(models.Model):
    project_count = models.PositiveIntegerField(max_length=5, verbose_name='Número de Projetos')
    user_count    = models.PositiveIntegerField(max_length=5, verbose_name='Número de Usuários')
    date_created  = models.DateTimeField(default=datetime.now(), verbose_name='Data de Criação')

    def __unicode__(self):
        return str(self.date_created.date())

    class Meta():
        verbose_name='Estatística'
