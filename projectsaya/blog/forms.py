from django import forms 
from .models import Blog, Kategori_blog
  
class BlogR(forms.ModelForm): 
  
    class Meta: 
        model = Blog
        fields = ['id', 'judul', 'deskripsi', 'tanggal', 'image_blog', 'id_kategori'] 

class Kat_blog(forms.ModelForm): 
  
    class Meta: 
        model = Kategori_blog
        fields = ['id_kategori', 'nama'] 