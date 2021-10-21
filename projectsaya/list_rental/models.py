from django.db import models

class List(models.Model):
    judul = models.CharField(max_length=50)
    harga = models.CharField(max_length=50)
    deskripsi = models.CharField(max_length=500) 
    image_list = models.ImageField(upload_to='list_rental/')
    id_kategori = models.ForeignKey('Kategori', on_delete=models.CASCADE)  

    class Meta:
        db_table = 'dt_list'

    def __str__(self):
    	return "{}. {}".format(self.id)

class Kategori(models.Model):
    id_kategori = models.AutoField(primary_key=True)
    nama = models.CharField(max_length=50)

    class Meta:
        db_table = 'dt_kategori'