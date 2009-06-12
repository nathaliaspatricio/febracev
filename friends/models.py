# -*- coding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from datetime import datetime

class FriendLink(models.Model):
    from_user = models.ForeignKey(User, related_name='from_user')
    to_user = models.ForeignKey(User, related_name='to_user')
    date_added = models.DateTimeField(default=datetime.now)

    def __unicode__(self):
        return u'%s está seguindo %s' % (self.from_user.username, self.to_user.username)

    def save(self, **kwargs):
        if (self.from_user == self.to_user):
            raise ValueError(u'Não se pode adicionar você mesmo como amigo')
        else:
            super(FriendLink,self).save(**kwargs)

    class Meta:
        unique_together = (('from_user', 'to_user'),)
