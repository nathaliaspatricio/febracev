# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.localflavor.br.br_states import STATE_CHOICES

class Institution(models.Model):
    name = models.CharField(max_length=50, verbose_name='Nome')
    address = models.CharField(max_length=100, blank=True, verbose_name='Endereço')
    city = models.CharField(max_length=50, blank=True, verbose_name='Cidade')
    state = models.CharField(max_length=2, choices=STATE_CHOICES, blank=True, verbose_name='Estado')
    website = models.URLField(blank=True, verbose_name='Site')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        return ('institutions_institution_detail', (), { 'object_id': self.id })

    class Meta:
        verbose_name='Instituição'
        verbose_name_plural='Instituições'
