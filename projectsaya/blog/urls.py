from django.urls import path
from . import views

urlpatterns = [
	path('editblog/<int:id>', views.editblog),
	path('hapusblog/<int:id>', views.hapusblog),
	path('tambahblog', views.tambahblog),
	path('kategoriblog', views.kategoriblog),
	path('tambahkat_blog', views.tambahkat_blog),
	path('editkat_blog/<int:id_kategori>', views.editkat_blog),
	path('hapuskat_blog/<int:id_kategori>', views.hapuskat_blog),
    path('', views.index)
]