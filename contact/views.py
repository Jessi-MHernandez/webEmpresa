from django.shortcuts import render, redirect
from django.urls import reverse
from django.core.mail import EmailMessage
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
            #ENVIAMOS EL CORREO Y DIRECCIONAMOS
            email = EmailMessage(
                "Jess-Solutions: Nuevo mensaje de contacto", 
                "De {} <{}>\n\nEscribió:\n\n{}".format(name, email, content),
                "no-contestar@inbox.mailtrap.io",
                ["jessii.hdez.20@repo@gmail.com"],
                reply_to=[email]
            )

            try:
                email.send()
                #REDIRECCIONAMOS A OK
                return redirect(reverse('contact')+"?ok")
            except:
                #REDIRECCIONAMOS A FAIL
                return redirect(reverse('contact')+"?fail")


    return render(request, "contact/contact.html", {'form':contact_form})