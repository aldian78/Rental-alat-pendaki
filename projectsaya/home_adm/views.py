from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, logout
from django.contrib import messages
from list_rental.models import List
from mahasiswa.models import Gallery
from blog.models import Blog

def index(request):
    data= List.objects.all().count()
    glry= Gallery.objects.all().count()
    blg= Blog.objects.all().count()
    context = {
        'judul': 'Tugas Pemograman Framework',
        'subjudul': 'Django',
        'footer': 'Kelompok blablablaa',
        'hsl': data,
        'glry': glry,
        'blg': blg,
    }
    if request.method == "GET":
        if request.user.is_authenticated: #hak akses admin
            return render(request, 'dashboard/index.html', context)
        else:
            return redirect('/login')

def logoutView(request):
    context = {
        'page_tittle':'logout'
    }

    if request.method == "POST":
        if request.POST["logout"] == "Submit":
            logout(request)

        messages.info(request, 'berhasil logout !')
        return redirect('/')

    return render(request, 'index.html', context)
