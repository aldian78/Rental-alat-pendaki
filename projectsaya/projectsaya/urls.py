from django.conf.urls import url, include
from django.contrib import admin
from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^mahasiswa/', include('mahasiswa.urls')),
    url(r'^list_rental/', include('list_rental.urls')),
    url(r'^login/', include('login.urls')),
    url(r'^home_adm/', include('home_adm.urls')),
    url(r'^aboutus/', include('aboutus.urls')),
    url(r'^contact_adm/', include('contact_adm.urls')),
    url(r'^blog/', include('blog.urls')),
    url(r'^$', views.index),
    path('gallery',views.gallery),
    path('list',views.list),
    path('about_us',views.about_us),
    path('blog_user',views.blog),
    path('blog_detail/<int:id>',views.blog_detail),
    path('list_detail/<int:id>',views.list_detail),
    path('team',views.team),
    path('contact',views.contact),
    path('tambahcontact',views.tambahcontact),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
