# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from django.contrib import admin
from friends.utils import get_following_set
from django.contrib.localflavor.br.br_states import STATE_CHOICES

GENDER_CHOICES = (
    (u'M', u'Masculino'),
    (u'F', u'Feminino'),
)

USER_TYPES = (
    (u'A', u'Avaliador'),
    (u'E', u'Equipe'),
    (u'F', u'Finalista'),
    (u'O', u'Orientador'),
    (u'V', u'Visitante'),
)

class Institution(models.Model):
    name = models.CharField(max_length=50)
    address = models.CharField(max_length=100, blank=True)
    city = models.CharField(max_length=50, blank=True)
    state = models.CharField(max_length=2, choices=STATE_CHOICES, blank=True)
    website = models.URLField(blank=True)

    def __unicode__(self):
        return self.name

class UserProfile(models.Model):
    """
    User class fields:

    | username | first_name | last_name | email | password | is_staff |
    | is_active | is_superuser | last_login | date_joined |

    """

    user = models.ForeignKey(User, unique=True)
    user_type = models.CharField(max_length=1, choices=USER_TYPES, blank=True)

    city = models.CharField(max_length=100, blank=True)
    state =  models.CharField(max_length=2, choices=STATE_CHOICES, blank=True)
    birthdate = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True )

    institution = models.ForeignKey(Institution, blank=True, null=True)
    mugshot = models.ImageField(upload_to='uploads/', blank=True)

    def __unicode__(self):
        return self.user.username

    @models.permalink
    def get_absolute_url(self):
        return ('profiles_profile_detail', (), { 'username': self.user.username })
