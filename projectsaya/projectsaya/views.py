from django.shortcuts import render, redirect
from django.http import HttpResponseRedirect
from aboutus.models import About
from django.db import connection
from list_rental.models import List, Kategori
from blog.models import Blog, Kategori_blog
from mahasiswa.models import Gallery
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from contact_adm.forms import Cntct, Kl, Kb
from django.contrib import messages
from django.urls import reverse

def index(request):
    aboutus = About.objects.all().order_by('-id')[:1]
    results = List.objects.all().order_by('-id')[:6] #limit
    results_blog = Blog.objects.all().order_by('-id')[:3]
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'list rental',
        'footer': 'Kelompok blablablaa',
        'List':results,
        'Blog': results_blog,
        'aboutus' : aboutus,
    }

    # if request.user.is_authenticated():
    #     return redirect('/')
    # else:
    #     return redirect('index_user.html')
    return render(request, 'index.html', context)

def list(request):
    results = List.objects.all().order_by('-id') #-id menunjukan DESC 
    page = request.GET.get('page', 1)

    paginator = Paginator(results, 6)
    try: #mencoba
        results = paginator.page(page)
    except PageNotAnInteger: #kecuali
        results = paginator.page(1)
    except EmptyPage:
        results = paginator.page(paginator.num_pages)

    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'list rental',
        'footer': 'Kelompok blablablaa',
        'List': results,
    }

    return render(request, 'list.html', context)

def list_detail(request, id):
    obj = List.objects.get(id = id)

    form = Kl(request.POST or None, request.FILES or None) 
    context = {
        'list': obj,
    }
    if request.method == 'POST': 
  
        if form.is_valid(): 
            form.save()
            return redirect('/list')
        pass
        
    return render(request, 'list_detail.html', context)

def gallery(request):
    gallery = Gallery.objects.all()
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'About',
        'footer': 'Kelompok blablablaa',
        'gallery' : gallery,
    }

    return render(request, 'Gallery.html', context)

def about_us(request):
    aboutus = About.objects.all()
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'About',
        'footer': 'Kelompok blablablaa',
        'aboutus' : aboutus,
    }

    return render(request, 'about_us.html', context)

def blog(request):
    data = List.objects.all().order_by('-id')[:10]
    results = Blog.objects.all()
    if 'q' in request.GET:
        q=request.GET.get('q', '')
        results = Blog.objects.filter(judul__icontains=q)

    page = request.GET.get('page', 1)

    paginator = Paginator(results, 4) # pagination all dan search
    try: #mencoba
        results = paginator.page(page)
    except PageNotAnInteger: #kecuali
        results = paginator.page(1)
    except EmptyPage:
        results = paginator.page(paginator.num_pages)

    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'Halaman Blog',
        'footer': 'Kelompok blablablaa',
        'Blog':results,
        'data': data,
    }

    return render(request, 'blog.html', context)


def blog_detail(request, id):
    obj = Blog.objects.get(id = id)
    form = Kb(request.POST or None, request.FILES or None) 
    if request.method == 'POST': 
  
        if form.is_valid(): 
            form.save()

            return redirect('/blog_user')
        pass
    context = {
        'blog': obj,
    }

    return render(request, 'blog_detail.html', context)

def team(request):
    context = {
    }

    return render(request, 'team.html', context)

def contact(request):
    context = {
    }

    return render(request, 'contact.html', context)

def tambahcontact(request): 
  
    form = Cntct(request.POST or None, request.FILES or None) 
    if request.method == 'POST': 
  
        if form.is_valid(): 
            form.save()

            messages.success(request, 'Terima kasih sudah mengirim komentar, silahkan check email anda ')
            return redirect('/contact')
        pass
