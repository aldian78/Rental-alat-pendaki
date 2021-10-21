from django.db import models

class Gallery(models.Model):
    tempat = models.CharField(max_length=50)
    tanggal = models.DateField()
    image_gallery = models.ImageField(upload_to='gallery/')

    class Meta:
        db_table = 'dt_gallery'

    def __str__(self):
        return "{}. {}".format(self.id)
        