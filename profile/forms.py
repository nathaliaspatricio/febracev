from django import forms
from profile.models import UserProfile

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

class ProfileForm(forms.Form):
    first_name = forms.CharField()
    last_name = forms.CharField()
        
    #user_type = forms.CharField(max_length=1, choices=USER_TYPES)
    
    city = forms.CharField(max_length=100)
    state =  forms.CharField(max_length=2)
    birthdate = forms.DateField()
    #gender = forms.CharField(max_length=1, choices=GENDER_CHOICES)
    
    mugshot = forms.URLField()
    institution = forms.CharField(max_length=100)

    def save(self, user):
        profile = UserProfile()
        profile.user = user
        user.first_name = self.first_name
        user.last_name = self.last_name
        #profile.user_type = self.user_type
        profile.city = self.city
        profile.state = self.state
        profile.birthdate = self.birthdate
        #profile.gender = self.gender
        profile.mugshot = self.mugshot
        profile.institution = self.institution
        
        profile.save()
        user.save()
