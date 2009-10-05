from django import forms
from photologue.models import Photo

class AddPhotoForm(forms.ModelForm):
    class Meta:
        model = Photo
        exclude = ('date_added','is_public',)

class EditPhotoForm(forms.ModelForm):
    class Meta:
        model = Photo
        exclude = ('image', 'date_taken', 'view_count', 'title_slug', 'date_added','is_public',)
