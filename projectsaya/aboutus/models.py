from django.db import models

class About(models.Model):
    about = models.TextField(blank=True, null=True) 
    image_about = models.ImageField(upload_to='img/') 

    class Meta:
        db_table = 'dt_about'

    def __str__(self):
    	return "{}. {}".format(self.id)