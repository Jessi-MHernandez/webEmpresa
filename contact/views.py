from django.shortcuts import render, redirect
from django.urls import reverse
from .forms import ContactForms

# Create your views here.
def contact(request):
    contact_form = ContactForms()

    if request.method == "POST":
        contact_form = ContactForms(data=request.POST)
        if contact_form.is_valid():
            name = request.POST.get('name', '')
            email = request.POST.get('email', '')
            content = request.POST.get('content', '')
            #SUPONEMOS QUE TODO VA BIEN, ENTONCES REDIRECCIONAMOS
            return redirect(reverse('contact')+"?ok")


    return render(request, "contact/contact.html", {'form':contact_form})