from django import forms 
from .models import About
  
class Abt(forms.ModelForm): 
  
    class Meta: 
        model = About
        fields = ['id', 'about', 'image_about'] 