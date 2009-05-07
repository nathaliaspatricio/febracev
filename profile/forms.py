from django import forms
from profile.models import UserProfile

class ProfileForm(forms.ModelForm):
    first_name = forms.CharField()
    last_name = forms.CharField()
    email = forms.EmailField()

    class Meta:
        model = UserProfile
        exclude = ('user',)
