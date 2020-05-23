from django.contrib import admin
from .models import Category, Post

# Register your models here.
class CategoryAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')

class PostAdmin(admin.ModelAdmin):
    readonly_fields = ('created', 'updated')
#INDICAR LAS COLUMNAS QUE QUEREMOS VISUALIZAR
    list_display = ('title', 'author', 'published', 'post_categories')
    ordering = ('author', 'published')
#MOSTRAR UN FORMULARIO DE BUSQUEDA
    search_fields = ('title', 'author__username', 'categories__name')
#JERARQUIZAR POR FECHAS
    date_hierarchy = 'published'
#LISTADO DE FILTROS
    list_filter = ('author__username', 'categories__name')

    def post_categories(self, obj):
        return ", ".join([c.name for c in obj.categories.all().order_by("name")])
    post_categories.short_description = "Categorías"

#REGISTRAR LOS CAMBIOS EN EL ADM
admin.site.register(Category, CategoryAdmin)
admin.site.register(Post, PostAdmin)