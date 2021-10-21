from django.db import models

class Contact(models.Model):
    nama = models.CharField(max_length = 100, blank=True, null=True)
    email = models.EmailField(max_length = 100)
    tanggal = models.DateTimeField(auto_now_add=True)
    pesan = models.TextField(blank=True, null=True) 

    class Meta:
        db_table = 'dt_contact'

    def __str__(self):
    	return "{}. {}".format(self.id)

class Komentarlist(models.Model):
    nama = models.CharField(max_length = 100, blank=True, null=True)
    email = models.EmailField(max_length = 100)
    tanggal = models.DateTimeField(auto_now_add=True)
    pesan = models.TextField(blank=True, null=True) 

    class Meta:
        db_table = 'dt_komentarlist'

    def __str__(self):
    	return "{}. {}".format(self.id)

class Komentarblog(models.Model):
    nama = models.CharField(max_length = 100, blank=True, null=True)
    email = models.EmailField(max_length = 100)
    tanggal = models.DateTimeField(auto_now_add=True)
    pesan = models.TextField(blank=True, null=True) 

    class Meta:
        db_table = 'dt_komentarblog'

    def __str__(self):
    	return "{}. {}".format(self.id)