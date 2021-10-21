from django.urls import path

from . import views

urlpatterns = [
	path('tambahdata',views.tambah),
	path('editdata/<int:id>',views.edit),
	path('hapusdata/<int:id>',views.hapus),
    path('', views.index)
]
