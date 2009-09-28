from django import forms
from profiles.models import UserProfile
from django.contrib.auth.models import User

class ProfileForm(forms.ModelForm):

    class Meta:
        model = UserProfile
        exclude = ('user', 'user_type', 'is_active',)

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ('email',)
