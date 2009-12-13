import os, sys
sys.path.append('/media/disk/nathalia/')
sys.path.append('/media/disk/nathalia/febracev/')
os.environ['DJANGO_SETTINGS_MODULE']='febracev.settings'

import django.core.handlers.wsgi

application = django.core.handlers.wsgi.WSGIHandler()
