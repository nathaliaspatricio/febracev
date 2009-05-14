#!/bin/sh

rm febracev.db
python manage.py syncdb --noinput
