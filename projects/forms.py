from django import forms
from projects.models import Project

ROLES = (
    (u'E', u'Estudante'),
    (u'O', u'Orientador'),
)

class ProjectForm(forms.ModelForm):
    slug = forms.SlugField(required=True)
    role = forms.CharField(required=True, widget=forms.Select(choices=ROLES))

    class Meta:
        model = Project
        exclude = ('students','advisors','edition','code','video','is_local',)

