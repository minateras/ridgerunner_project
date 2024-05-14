from django.contrib import admin
from django.urls import include, path


urlpatterns = [
    path('ridgerunner_app/', include('ridgerunner_app.urls')),
    # path('workingridge_app/', include('workingridge_app.urls')),
    path('admin/', admin.site.urls),
]
