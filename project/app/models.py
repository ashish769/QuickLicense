from django.db import models

# Create your models here.


#for key generation in the superadmin section
class Key(models.Model):
    private_key = models.TextField()
    public_key = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Key {self.id}"



from django.db import models

# Address model for normalization
class Address(models.Model):
    province = models.CharField(max_length=100)
    district = models.CharField(max_length=100)
    licence_office = models.CharField(max_length=100)

    def __str__(self):
        return f'{self.licence_office}, {self.district}, {self.province}'

# PersonalInfo model for holding personal details
class PersonalInfo(models.Model):
    first_name = models.CharField(max_length=100, null=False)
    middle_name = models.CharField(max_length=100, blank=True, null=True)
    last_name = models.CharField(max_length=100)
    dob = models.DateField()  # Date of birth
    father_name = models.CharField(max_length=100)
    blood_group = models.CharField(max_length=5)
    contact_no = models.CharField(max_length=10)
    email = models.EmailField(max_length=254, unique=True)
    photo = models.ImageField(upload_to='personal_photos/', null=True, blank=True)
    gender=models.CharField(max_length=50)

    def __str__(self):
        return f'{self.first_name} {self.last_name}'

# LicenceDetails model holding license-specific details
class LicenceDetails(models.Model):
    personal_info = models.OneToOneField(PersonalInfo, on_delete=models.CASCADE)
    address = models.ForeignKey(Address, on_delete=models.CASCADE)
    licence_no = models.CharField(max_length=100, unique=True)
    citizenship_no = models.CharField(max_length=100, unique=True)
    issue_date = models.DateField()
    expiry_date = models.DateField()
    category = models.CharField(max_length=10)
    is_printed=models.BooleanField(default=False)

    def __str__(self):
        return f'Licence No: {self.licence_no} - {self.personal_info.first_name} {self.personal_info.last_name}'

