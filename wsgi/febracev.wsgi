import os, sys
sys.path.append('/home/leandro/projects')
sys.path.append('/home/leandro/projects/febracev')
os.environ['DJANGO_SETTINGS_MODULE']='febracev.settings'

import django.core.handlers.wsgi

application = django.core.handlers.wsgi.WSGIHandler()
