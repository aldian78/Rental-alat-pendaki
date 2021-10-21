from django.urls import path
from . import views

urlpatterns = [
	path('tambahlist',views.tambahlist),
	path('editlist/<int:id>',views.editlist),
	path('hapuslist/<int:id>',views.hapuslist),
	path('tambahkat',views.tambahkat),
	path('editkat/<int:id_kategori>',views.editkat),
	path('hapuskat/<int:id_kategori>',views.hapuskat),
	path('kategori', views.kategori),
    path('', views.index)
]