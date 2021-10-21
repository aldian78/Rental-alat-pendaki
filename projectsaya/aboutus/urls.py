from django.urls import path
from . import views

urlpatterns = [
	path('tambahabout',views.tambahabout),
	path('editabout/<int:id>',views.editabout),
	path('hapusabout/<int:id>',views.hapusabout),
    path('', views.index)
]