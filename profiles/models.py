# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from friends.utils import get_following_set
from django.contrib.localflavor.br.br_states import STATE_CHOICES
from institutions.models import Institution

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

class UserProfile(models.Model):
    """
    User class fields:

    | username | first_name | last_name | email | password | is_staff |
    | is_active | is_superuser | last_login | date_joined |

    """

    user = models.ForeignKey(User, unique=True, blank=True, null=True)
    user_type = models.CharField(max_length=1, choices=USER_TYPES, blank=True, default='V')
    name = models.CharField(max_length=255)

    city = models.CharField(max_length=100, blank=True)
    state =  models.CharField(max_length=2, choices=STATE_CHOICES, blank=True)
    birthdate = models.DateField(null=True, blank=True)
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES, blank=True )

    institution = models.ForeignKey(Institution, blank=True, null=True)
    mugshot = models.ImageField(upload_to='uploads/', blank=True)
    is_active = models.BooleanField(default=True)

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        try:    
            return ('profiles_profile_detail', (), { 'username': self.user.username })
        except:
            return ('index', (), {})
