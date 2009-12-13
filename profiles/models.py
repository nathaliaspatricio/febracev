# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from friends.utils import get_following_set
from django.contrib.localflavor.br.br_states import STATE_CHOICES
from institutions.models import Institution

GENDER_CHOICES = (
    (u'Masculino', u'Masculino'),
    (u'Feminino', u'Feminino'),
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

    user = models.ForeignKey(User, unique=True, blank=True, null=True, verbose_name='Usuário')
    user_type = models.CharField(max_length=1, choices=USER_TYPES, blank=True, default='V', verbose_name='Tipo de Usuário')
    name = models.CharField(max_length=255, verbose_name='Nome')

    city = models.CharField(max_length=100, blank=True, verbose_name='Cidade')
    state =  models.CharField(max_length=2, choices=STATE_CHOICES, blank=True, verbose_name='Estado')
    birthdate = models.DateField(null=True, blank=True, verbose_name='Data de Nascimento')
    gender = models.CharField(max_length=9, choices=GENDER_CHOICES, blank=True, verbose_name='Sexo')

    institution = models.ForeignKey(Institution, blank=True, null=True, verbose_name='Instituição')
    mugshot = models.ImageField(upload_to='uploads/', blank=True, verbose_name='Foto')
    is_active = models.BooleanField(default=True, verbose_name='Ativo?')

    def __unicode__(self):
        return self.name

    @models.permalink
    def get_absolute_url(self):
        try:    
            return ('profiles_profile_detail', (), { 'username': self.user.username })
        except:
            return ('index', (), {})

    class Meta:
        verbose_name='Perfil'
        verbose_name_plural='Perfis'
