# -*- coding: utf-8 -*-

import unittest
from django.contrib.auth.models import User
from profiles.models import UserProfile

from datetime import date

class ProfileTestCase(unittest.TestCase):
    def setUp(self):
        self.user = User.objects.create(username=u'zé', email="ze@mane.com")
        self.profile = UserProfile.objects.create(user=self.user, institution=u'escola do zé', birthdate=date.today())

    def testProfileCreation(self):
        self.assertEquals(self.user.get_profile(), self.profile)
        self.assertEquals(self.user.get_profile().institution, self.profile.institution)
        self.assertEquals(self.user.get_profile().birthdate, self.profile.birthdate)
