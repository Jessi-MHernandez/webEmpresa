from django.contrib import admin
from .models import Page

# Register your models here.
#CREAR UN ADMIN DE PRUEBA 46
class PageAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')

admin.site.register(Page, PageAdmin)
