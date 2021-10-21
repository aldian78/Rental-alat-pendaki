from django import forms 
from .models import List, Kategori
  
class ListR(forms.ModelForm): 
  
    class Meta: 
        model = List
        fields = ['id', 'judul', 'harga', 'deskripsi', 'image_list', 'id_kategori'] 

class Kat(forms.ModelForm): 
  
    class Meta: 
        model = Kategori
        fields = ['id_kategori', 'nama'] 