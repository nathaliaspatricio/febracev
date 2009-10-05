from django.conf import settings
from django.shortcuts import get_object_or_404, render_to_response
from django.http import Http404, HttpResponseRedirect
from django.template import RequestContext
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse
from django.db import IntegrityError
from django.views.generic import list_detail

from projects.models import Project
from photologue.models import Gallery, Photo
from photologue.forms import AddPhotoForm, EditPhotoForm

SAMPLE_SIZE = ":%s" % getattr(settings, 'GALLERY_SAMPLE_SIZE', 5)

def gallery_detail(request, edition, category, code):
    project = get_object_or_404(Project, edition=edition, category=category, code=code) 
    object = get_object_or_404(Gallery, project=project)

    return render_to_response('photologue/gallery_detail.html',
                              { 'object': object, 
                                'sample_size': SAMPLE_SIZE },
                              context_instance=RequestContext(request))

@login_required
def add_photo(request, edition=None, category=None, code=None, project_slug=None):
    if project_slug:    
        project = get_object_or_404(Project, slug=project_slug)
    else:
        project = get_object_or_404(Project, edition=edition, category=category, code=code)

    gallery = get_object_or_404(Gallery, project=project)

    user_profile = request.user.get_profile()
    user_projects = list(user_profile.students.all()) + list(user_profile.advisors.all())

    if not project in user_projects:
        raise Http404
    else:
        if request.method == 'POST':
            form = AddPhotoForm(data=request.POST, files=request.FILES)
            if form.is_valid():
                try:
                    photo = form.save()
                    gallery.photos.add(photo)
                    gallery.save()
                    kwargs = { 'edition': edition, 'category': category, 'code': code }
                    return HttpResponseRedirect( reverse('pl-project-gallery', kwargs=kwargs ))
                except IntegrityError:
                    form.errors['title_slug'] = [u'Slug repetido.']
        else:
            form = AddPhotoForm()

        return render_to_response('photologue/add_photo.html',
                                  { 'form': form },
                                    context_instance=RequestContext(request))

def photo_detail(request, slug):
    photo = get_object_or_404(Photo, title_slug=slug)
    is_owner = False

    if request.user.is_authenticated():
        user_profile = request.user.get_profile()
        user_projects = list(user_profile.students.all()) + list(user_profile.advisors.all())

        photos = []

        for project in user_projects:
            gallery = Gallery.objects.get(project=project)
            photos.extend( list( gallery.photos.all() ) )

        is_owner =  photo in photos

    return list_detail.object_detail(
        request,
        queryset = Photo.objects.filter(is_public=True),
        object_id = photo.id,
        extra_context = { 'is_owner': is_owner }
    )


@login_required
def edit_photo(request, slug):
    user_profile = request.user.get_profile()
    user_projects = list(user_profile.students.all()) + list(user_profile.advisors.all())
    photo = get_object_or_404(Photo, title_slug=slug)

    photos = []

    for project in user_projects:
        gallery = Gallery.objects.get(project=project)
        photos.extend( list( gallery.photos.all() ) )

    if not photo in photos:
        raise Http404
    else:
        if request.method == 'POST':
            form = EditPhotoForm(data=request.POST, instance=photo)
            if form.is_valid():
                try:
                    photo = form.save()
                    kwargs = { 'slug': slug}
                    return HttpResponseRedirect( reverse('pl-photo', kwargs=kwargs ))
                except IntegrityError:
                    form.errors['title_slug'] = [u'Slug repetido.']
        else:
            form = EditPhotoForm(instance=photo)

        return render_to_response('photologue/edit_photo.html',
                                  { 'form': form,
                                    'object': photo },
                                    context_instance=RequestContext(request))
