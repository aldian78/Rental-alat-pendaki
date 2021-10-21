from django.shortcuts import render, redirect, get_object_or_404
from django.contrib import messages
from django.db import connection
from .models import Blog, Kategori_blog
from .forms import BlogR, Kat_blog
from typing import List

def index(request):
	kat=Kategori_blog.objects.all()
	results = Blog.objects.all().order_by('-id')
	context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'Halaman Blog',
        'footer': 'Kelompok blablablaa',
        'Blog':results,
        'Kategori_blog':kat
    }
	return render(request, 'blog_adm/index.html', context)

def tambahblog(request):
	hasil = Kategori_blog.objects.all()
	form = BlogR(request.POST or None, request.FILES or None)
	if request.method == 'POST':

		if form.is_valid():
			form.save()

			messages.success(request, 'Blog anda telah ditambahkan !')
			return redirect('/blog')
		else:
			messages.error(request, 'Pastikan isi form dengan benar !')
			return redirect('/blog')
	data = {
		'hsl': hasil,
	}
	return render(request, 'blog_adm/tambah_blog.html', data)

def editblog(request, id):
	obj = get_object_or_404(Blog, id = id)
	hasil = Kategori_blog.objects.all()

	form = BlogR(request.POST or None, request.FILES or None, instance = obj)
	if request.method == 'POST':

		if form.is_valid():
		   	form.save()

		   	messages.success(request, 'Blog berhasil diedit !')
		   	return redirect("/blog")
		else:
			messages.error(request, 'Blog gagal diedit, pastikan semua form diisi dengan benar !')
			return redirect('/blog')
	data = {
        'blog':obj,
        'hsl': hasil,
    }
  	
	return render(request, 'blog_adm/edit_blog.html', data)

def hapusblog(request, id):
    dt = Blog.objects.get(id=id)
    dt.delete()
    messages.success(request, 'Blog berhasil dihapus !')
    return redirect('/blog')

def kategoriblog(request):
    hasil = Kategori_blog.objects.all()
    context = {
        'tittle': 'Tugas Pemograman Framework',
        'judul': 'Halaman',
        'subjudul': 'Kategori blog',
        'footer': 'Kelompok blablablaa',
        'hasil' : hasil
    }
    return render(request, 'blog_adm/kategori_blog.html', context)

def tambahkat_blog(request):
	form = Kat_blog(request.POST or None)
	if request.method == 'POST':

		if form.is_valid():
			form.save()
			messages.success(request, 'Kategori blog berhasil ditambahkan !')
			return redirect('/blog/kategoriblog')
		pass

def editkat_blog(request, id_kategori):
    obj = Kategori_blog.objects.get(id_kategori = id_kategori) 
  
    form = Kat_blog(request.POST or None, instance = obj)
    if request.method == 'POST':
    	
    	if form.is_valid(): 
        	form.save()
        	messages.success(request, 'Kategori blog berhasil diedit !') 
        	return redirect("/blog/kategoriblog")

def hapuskat_blog(request, id_kategori):
    dt = Kategori_blog.objects.get(id_kategori=id_kategori)
    dt.delete()
    messages.success(request, 'Kategori blog berhasil dihapus !') 
    return redirect('/blog/kategoriblog')