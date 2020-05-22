from django.contrib import admin
from .models import Service

# Register your models here.
#VAMOS A CREAR UNA CONFIGURACION BASICA PARA EL ADMINISTRADOR
class ServiceAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')

admin.site.register(Service, ServiceAdmin)
