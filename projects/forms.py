from django import forms
from projects.models import Project

class ProjectForm(forms.ModelForm):
    slug = forms.SlugField(required=True)

    class Meta:
        model = Project
        exclude = ('students','advisors','edition','code','video','is_local',)

