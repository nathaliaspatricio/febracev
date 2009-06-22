# -*- coding: utf-8 -*-
from django.conf.urls.defaults import *
from django.conf import settings

from profiles.models import Institution

urlpatterns = patterns('django.views.generic.list_detail',
    url(
        r'^$',
        'object_list',
        {'queryset': Institution.objects.all()},
        name='institutions_institution_list',
    ),
    url(
        r'^(?P<object_id>\d+)/$',
        'object_detail',
        {'queryset': Institution.objects.all()},
        name='institutions_institution_detail',
    )
)
