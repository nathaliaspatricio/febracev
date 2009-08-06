from django import forms
from blog.models import Post

class AddPostForm(forms.ModelForm):
    class Meta:
        model = Post
        exclude = ('author','project','publish',)

class EditPostForm(forms.ModelForm):
    class Meta:
        model = Post
        exclude = ('author','project','publish', 'slug', )
