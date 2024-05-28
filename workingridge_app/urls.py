from django.urls import path
from . import views


urlpatterns = [
    path('', views.workingridge, name='workingridge'),
]
