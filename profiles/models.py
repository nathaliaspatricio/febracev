from django.db import models
from django.contrib.auth.models import User
from django.contrib import admin

GENDER_CHOICES = (
    ('M', 'Masculino'),
    ('F', 'Feminino'),
)

USER_TYPES = (
    ('A', 'Avaliador'),
    ('E', 'Equipe'),
    ('F', 'Finalista'),
    ('O', 'Orientador'),
    ('V', 'Visitante'),
)

class UserProfile(models.Model):
    """
    User class fields:

    username
    first_name
    last_name
    email
    password
    is_staff
    is_active
    is_superuser
    last_login
    date_joined
    """

    user = models.ForeignKey(User, unique=True)
    user_type = models.CharField(max_length=1, choices=USER_TYPES)

    city = models.CharField(max_length=100)
    state =  models.CharField(max_length=2)
    birthdate = models.DateField()
    gender = models.CharField(max_length=1, choices=GENDER_CHOICES)

    mugshot = models.ImageField(upload_to='uploads/', blank=True)
    institution = models.CharField(max_length=100)

    def __unicode__(self):
        return self.user.username

    @models.permalink
    def get_absolute_url(self):
        return ('profiles_profile_detail', (), { 'username': self.user.username })

admin.site.register(UserProfile)
