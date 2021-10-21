from django.shortcuts import render, redirect
from .forms import ListR, Kat
from django.contrib import messages
from django.db import connection
from .models import List, Kategori

def index(request):
	kat = Kategori.objects.all()
	results = List.objects.all().order_by('-id')
	context = {
		'tittle': 'Tugas Pemograman Framework',
		'judul': 'Halaman',
		'subjudul': 'list rental',
		'footer': 'Kelompok blablablaa',
		'List':results,
		'Kategori':kat
	}
	return render(request, 'list/index.html', context)


def tambahlist(request):
	form = ListR(request.POST or None, request.FILES or None)
	if request.method == 'POST':

		if form.is_valid():
			form.save()
			
			messages.success(request, 'List rental berhasil ditambahkan !')
			return redirect('/list_rental')
		else:
			messages.error(request, 'List rental gagal ditambahkan, pastikan isi dengan benar !')
			return redirect('/list_rental')

def editlist(request, id):
	obj = List.objects.get(id=id) 
  
	form = ListR(request.POST or None, request.FILES or None, instance = obj)
	if request.method == 'POST':
		
		if form.is_valid(): 
			form.save()
			messages.success(request, 'List rental berhasil diedit !')
			return redirect("/list_rental")
		else:
			messages.error(request, 'List rental gagal diedit, pastikan isi dengan benar !')
			return redirect('/list_rental')

def hapuslist(request, id):
	dt = List.objects.get(id=id)
	dt.delete()
	messages.success(request, 'List rental berhasil dihapus !')
	return redirect('/list_rental')

def kategori(request):
	hasil = Kategori.objects.all()
	context = {
		'tittle': 'Tugas Pemograman Framework',
		'judul': 'Halaman',
		'subjudul': 'Kategori list',
		'footer': 'Kelompok blablablaa',
		'hasil' : hasil
	}
	return render(request, 'kategori/index.html', context)

def tambahkat(request):
	form = Kat(request.POST or None)
	if request.method == 'POST':

		if form.is_valid():
			form.save()
			messages.success(request, 'List rental berhasil ditambahkan !')
			return redirect('/list_rental/kategori')
		pass

def editkat(request, id_kategori):
	obj = Kategori.objects.get(id_kategori = id_kategori) 
  
	form = Kat(request.POST or None, instance = obj)
	if request.method == 'POST':
		
		if form.is_valid(): 
			form.save()
			messages.success(request, 'List rental berhasil diedit !')
			return redirect("/list_rental/kategori")

def hapuskat(request, id_kategori):
	dt = Kategori.objects.get(id_kategori=id_kategori)
	dt.delete()
	messages.success(request, 'List rental berhasil dihapus !')
	return redirect('/list_rental/kategori')