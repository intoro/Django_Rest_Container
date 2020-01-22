from django.shortcuts import render
from django.contrib.auth.models import User
from the_events.serializers import UserSerializers
from rest_framework import viewsets

class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all()
    serializer_class = UserSerializers