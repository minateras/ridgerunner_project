from django.apps import AppConfig


class RidgerunnerAppConfig(AppConfig):
    default_auto_field = 'django.db.models.AutoField' # Originally: 'django.db.models.BigAutoField'. But I don't have the need to store numbers as big as 9223372036854775807.
    name = 'ridgerunner_app'
