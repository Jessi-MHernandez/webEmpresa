from django.shortcuts import render

# Create your views here. 31-34-46
#Vamos a iniciar a crear las vistas

def home(request):
    return render(request, "core/home.html")

def about(request):
    return render(request, "core/about.html")

def store(request):
    return render(request, "core/store.html")



