from django import forms
from .models import Gallery

class Glry(forms.ModelForm):
    class Meta:
        model = Gallery
        fields = "__all__"
        error_messages = {
            'id' : {
                'required': "Anda harus mengisi form id"
            },
            'tempat' : {
                'required': "Anda harus mengisi form Nama"
            },
            'tanggal' : {
                'required': "Anda harus menset form nim"
            }
        }