from django.db import models

class Blog(models.Model):
    judul = models.CharField(max_length=50)
    deskripsi = models.TextField(blank=True, null=True) 
    tanggal = models.DateField()
    image_blog = models.ImageField(upload_to='blog/')
    id_kategori = models.ForeignKey('Kategori_blog', on_delete=models.CASCADE)  

    class Meta:
        db_table = 'dt_blog'

    def __str__(self):
    	return "{}. {}".format(self.id)

class Kategori_blog(models.Model):
    id_kategori = models.AutoField(primary_key=True)
    nama = models.CharField(max_length=50)

    class Meta:
        db_table = 'dt_kategori_blog'
