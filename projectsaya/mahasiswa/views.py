from django.shortcuts import render, redirect
from .models import Gallery
from .forms import Glry
from django.contrib import messages

def index(request):
    hasil = Gallery.objects.all()
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'Gallery',
        'footer': 'Kelompok blablablaa',
        'hasil': hasil,
    }
    return render(request, 'mahasiswa/index.html', context)

def tambah(request):
    form = Glry(request.POST or None, request.FILES or None)
    if request.method == 'POST':
        if form.is_valid():
            form.save()

            messages.success(request, 'Gallery anda telah ditambahkan !')
            return redirect('/mahasiswa')
        else:
            messages.error(request, 'Pastikan sudah mengisi semua form !')
            return redirect('/mahasiswa')
    

def edit(request, id):
    obj = Gallery.objects.get(id = id) 
  
    form = Glry(request.POST or None, instance = obj)
    if form.is_valid(): 
        form.save()

        messages.success(request, 'Gallery telah diedit !') 
        return redirect("/mahasiswa") 
    else:
        messages.error(request, 'Gallery gagal diedit, pastikan semua form diisi dengan benar !') 
        return redirect("/mahasiswa") 

def hapus(request, id):
    dt = Gallery.objects.get(id=id)
    dt.delete()
    return redirect('/mahasiswa')