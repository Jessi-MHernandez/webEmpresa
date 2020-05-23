from .models import Link

#VAMOS A CREAR PROCESADOR DE CONTEXTO 45
def ctx_dict(request):
    ctx = {}
    links = Link.objects.all()
    for link in links:
        ctx[link.key] = link.url
    return ctx