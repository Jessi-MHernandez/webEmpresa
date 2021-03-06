"""webEmpresa URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include
from django.conf import settings

urlpatterns = [
    #Rutas de core 31
    path('', include('core.urls')),
     #Rutas de services 39
    path('services/', include('services.urls')),
    #Rutas de blog 42
    path('blog/', include('blog.urls')),
    #Rutas de pages 46
    path('page/', include('pages.urls')),
      #Rutas de contacto 50
    path('contact/', include('contact.urls')),
    #Rutas del admin
    path('admin/', admin.site.urls),

]


if settings.DEBUG:
    from django.conf.urls.static import static
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

#Titulos personalizados para el admin
admin.site.site_header = "J E S S - S O L U T I O N S"
admin.site.index_title = "Panel de dministración"
admin.site.site_title = "J E S S - S O L U T I O N S"