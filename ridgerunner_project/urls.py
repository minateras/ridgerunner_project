# from django.contrib import admin
from django.urls import include, path


ridgerunner_app_urls = include('ridgerunner_app.urls')

urlpatterns = [
    path('', ridgerunner_app_urls),
    path('ridgerunner_app/', ridgerunner_app_urls),
    path('workingridge_app/', include('workingridge_app.urls')),
    # path('admin/', admin.site.urls),
]
