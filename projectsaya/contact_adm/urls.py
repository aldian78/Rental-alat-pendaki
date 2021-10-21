from django.urls import path
from . import views

urlpatterns = [
	path('hapuscontact/<int:id>',views.hapuscontact),
	path('hapuskomenlist/<int:id>',views.hapuskomenlist),
	path('hapuskomenblog/<int:id>',views.hapuskomenblog),
	path('komentarlist', views.komentarlist),
	path('komentarblog', views.komentarblog),
    path('', views.index)
]