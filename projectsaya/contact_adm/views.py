from django.shortcuts import render, redirect
from .models import Contact, Komentarlist, Komentarblog
from .forms import Cntct, Kl, Kb
from django.contrib import messages


def index(request):
    contact = Contact.objects.all()
    context = {
        'judul': 'Halaman',
        'subjudul': 'Contact',
        'footer': 'Kelompok blablablaa',
        'contact' : contact,
        
    }
    return render(request, 'contact/index.html', context)

def hapuscontact(request, id):
    dt = Contact.objects.get(id=id)
    dt.delete()
    messages.success(request, 'Contact berhasil dihapus !')
    return redirect('/contact_adm')

def komentarlist(request):
    komenlist = Komentarlist.objects.all()
    context = {
        'judul': 'Halaman',
        'subjudul': 'Komentar list',
        'footer': 'Kelompok blablablaa',
        'komenlist' : komenlist,

    }
    return render(request, 'komentarlist/index.html', context)

def hapuskomenlist(request, id):
    dt = Komentarlist.objects.get(id=id)
    dt.delete()
    messages.success(request, 'Komentar list berhasil dihapus !')
    return redirect('/contact_adm/komentarlist')

def komentarblog(request):
    komenblog = Komentarblog.objects.all()
    context = {
        'judul': 'Halaman',
        'subjudul': 'Komentar blog',
        'footer': 'Kelompok blablablaa',
        'komenblog': komenblog
    }
    return render(request, 'komentarblog/index.html', context)

def hapuskomenblog(request, id):
    dt = Komentarblog.objects.get(id=id)
    dt.delete()
    messages.success(request, 'Komentar blog berhasil dihapus !')
    return redirect('/contact_adm/komentarblog')