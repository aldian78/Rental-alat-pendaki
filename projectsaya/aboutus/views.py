from django.shortcuts import render, redirect
from .models import About
from .forms import Abt
from django.contrib import messages


def index(request):
    aboutus = About.objects.all()
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'About',
        'footer': 'Kelompok blablablaa',
        'aboutus' : aboutus,
        
    }
    return render(request, 'about/index.html', context)


def tambahabout(request): 
  
    form = Abt(request.POST or None, request.FILES or None) 
    if request.method == 'POST': 
  
        if form.is_valid(): 
            form.save() 
            return redirect('/aboutus')
        pass

def editabout(request, id):
    obj = About.objects.get(id=id) 
  
    form = Abt(request.POST or None, request.FILES or None, instance = obj)
    if request.method == 'POST':
        
        if form.is_valid(): 
            form.save() 
            return redirect("/aboutus")

def hapusabout(request, id):
    dt = About.objects.get(id=id)
    dt.delete()
    return redirect('/aboutus')