from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib import messages

def loginView(request):
    context = {
    'title':'login',
    }
    user = None
    if request.method == "POST":

        username_login = request.POST['username']
        password_login = request.POST['password']

        user = authenticate(request, username=username_login, password=password_login)

        if user is not None:
            login(request, user)

            messages.success(request, 'Berhasil login !')
            return redirect('/home_adm')
        else:
            messages.error(request, 'Username dan Password Salah !')
            return redirect('/login')          
    if request.method == "GET":
        if request.user.is_authenticated: #hak akses login
            return redirect('/home_adm')
        else:
            return render(request, 'login/login.html', context)


