from django.db import models

class register(models.Model):
    name=models.CharField(max_length=150)
    address=models.CharField(max_length=150)
    number=models.CharField(max_length=150)
    ward_number=models.CharField(max_length=150)
    work_place=models.CharField(max_length=150)
    panchayat=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    password=models.CharField(max_length=150)


class instructions(models.Model):
    aser=models.CharField(max_length=150)
    ains=models.CharField(max_length=150)



class userregisters(models.Model):
    uname=models.CharField(max_length=150)
    age=models.CharField(max_length=150)
    number=models.CharField(max_length=150)
    ward_no=models.CharField(max_length=150)
    place=models.CharField(max_length=150)
    aadhar_number=models.CharField(max_length=150)
    email=models.CharField(max_length=150)
    password=models.CharField(max_length=150)
class questions(models.Model):
    uid=models.CharField(max_length=150)
    date=models.CharField(max_length=150)
    question=models.CharField(max_length=150)
    reply=models.CharField(max_length=150)
    status=models.CharField(max_length=150)
    

class pregregisters(models.Model):
    ward_number=models.CharField(max_length=150)
    house_number=models.CharField(max_length=150)
    name=models.CharField(max_length=150)
    con_date=models.CharField(max_length=150)
    last_periods_date=models.CharField(max_length=150)
    blood_group=models.CharField(max_length=150)
    weight=models.CharField(max_length=150)
    height=models.CharField(max_length=150)
    dob=models.CharField(max_length=150)
    last_checkup_date=models.CharField(max_length=150)
    disease=models.CharField(max_length=150)
    husbands_name=models.CharField(max_length=150)

class familydetails(models.Model):
    husbent_name=models.CharField(max_length=150)
    husbent_age=models.CharField(max_length=150)
    h_aadhar_number=models.CharField(max_length=150)
    husbent_job=models.CharField(max_length=150)
    consult_hospital=models.CharField(max_length=150)
    wardname=models.CharField(max_length=150)
    wardnumber=models.CharField(max_length=150)



class report(models.Model):
    subject=models.CharField(max_length=150)
    description=models.CharField(max_length=150)
    no_pregnent_womens=models.CharField(max_length=150)
    no_vacination_child=models.CharField(max_length=150)
    ward_no=models.CharField(max_length=150)
    panchayat=models.CharField(max_length=150)
    aid=models.CharField(max_length=150)
    
class vaccines(models.Model):
    father_name=models.CharField(max_length=150)
    mother_name=models.CharField(max_length=150)
    child_name=models.CharField(max_length=150)
    house_number=models.CharField(max_length=150)
    ward_no=models.CharField(max_length=150)
    dob=models.CharField(max_length=150)
    age=models.CharField(max_length=150)
    vaccine_details=models.CharField(max_length=150)
    phone_no=models.CharField(max_length=150)
    place=models.CharField(max_length=150)
    aid=models.CharField(max_length=150)
   