from django import forms 
from .models import Contact, Komentarlist, Komentarblog
  
class Cntct(forms.ModelForm): 
  
    class Meta: 
        model = Contact
        fields = ['id', 'nama', 'email', 'pesan']

class Kl(forms.ModelForm): 
  
    class Meta: 
        model = Komentarlist
        fields = ['id', 'nama', 'email', 'pesan']

class Kb(forms.ModelForm): 
  
    class Meta: 
        model = Komentarblog
        fields = ['id', 'nama', 'email', 'pesan'] 