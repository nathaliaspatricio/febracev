# -*- coding: utf-8 -*-
from django.test import TestCase
from django.db import IntegrityError
from django.contrib.auth.models import User
from friends.models import FriendLink
from friends.utils import get_following_set, get_follower_set, get_mutual_set

class FriendLinkTestCase(TestCase):
    def setUp(self):
        self.users = []
        #get_or_create returns a tuple with two elements. The first is the user
        #and the second is a boolean, True if a user was created, False if not
        self.users.append(User.objects.get_or_create(username='machado')[0])
        self.users.append(User.objects.get_or_create(username='clarice')[0])
        self.users.append(User.objects.get_or_create(username='fiodor')[0])
        self.users.append(User.objects.get_or_create(username='gabriel')[0])

        self.links = []
        # machado follows clarice and fiodor
        self.links.append(FriendLink.objects.get_or_create(from_user=self.users[0],
                                                    to_user=self.users[1])[0])
        self.links.append(FriendLink.objects.get_or_create(from_user=self.users[0],
                                                    to_user=self.users[2])[0])
        #clarice follows fiodor
        self.links.append(FriendLink.objects.get_or_create(from_user=self.users[1],
                                                    to_user=self.users[2])[0])
        #fiodor follow machado and clarice
        self.links.append(FriendLink.objects.get_or_create(from_user=self.users[2],
                                                    to_user=self.users[0])[0])
        self.links.append(FriendLink.objects.get_or_create(from_user=self.users[2],
                                                    to_user=self.users[1])[0])
        #gabriel does not follow nor is followed by anyone

    def testFollowingSet(self):
        machado_is_following = [self.users[1], self.users[2]]

        for index, user in enumerate(get_following_set(self.users[0])):
            self.assertEquals(user, machado_is_following[index])

    def testFollowersSet(self):
        clarice_is_followed_by = [self.users[0], self.users[2]]

        for index, user in enumerate(get_follower_set(self.users[1])):
            self.assertEquals(user, clarice_is_followed_by[index])

    def testMutualSet(self):
        fiodor_mutual_set = [self.users[0], self.users[1]]

        for index, user in enumerate(get_mutual_set(self.users[2])):
            self.assertEquals(user, fiodor_mutual_set[index])

    # a user cannot follow him/herself
    def testSelfFollowing(self):
        self.assertRaises(ValueError, FriendLink.objects.create,
                          from_user=self.users[0], to_user=self.users[0])

    #there must be only one FriendLink between two users.
    #This test tries to create the same FriendLink created in setUp
    def testNotUnique(self):
        self.assertRaises(IntegrityError, FriendLink.objects.create,
                          from_user=self.users[0], to_user=self.users[1])
