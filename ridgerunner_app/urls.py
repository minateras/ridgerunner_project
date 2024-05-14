from django.urls import path
from django.views.i18n import JavaScriptCatalog
from . import views


urlpatterns = [
    path("", views.news, name="news"),
    path("dogs/", views.dogs, name="dogs"),
    path("dogs/<slug:kennel_name>/", views.dog, name="dog"),
    path("puppies/", views.puppies, name="puppies"),
    path("litters/", views.litters, name="litters"),
    path("litters/<slug:letter>/", views.litter, name="litter"),
    path("about_us/", views.about_us, name="about_us"),
    path("contact_us/", views.contact_us, name="contact_us"),

    path("jsi18n/", JavaScriptCatalog.as_view(packages=['ridgerunner_app']), name='javascript_catalog'),
]
