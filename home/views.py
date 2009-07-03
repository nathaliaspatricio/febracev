from django.views.generic import list_detail
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext

from articles.models import Article

def index(request):
    article_list = Article.objects.all()
    return render_to_response('home/index.html',
                              {'article_list': article_list,
                              },
                              context_instance = RequestContext(request))

