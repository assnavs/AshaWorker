from django.http import HttpResponse
from django.shortcuts import render
from django.shortcuts import redirect
from  django.core.files.storage import FileSystemStorage
from django.conf import settings
from . models import *

def first(request):
    return render(request,'index.html')
def index(request):
    return render(request,'index.html')

def aregister(request):
    return render(request,'aregister.html')


def aregisters(request):
    if request.method=='POST':
        name=request.POST.get('name')
        address=request.POST.get('address')
        number=request.POST.get('number')
        ward_number=request.POST.get('ward_number')
        work_place=request.POST.get('work_place')
        panchayat=request.POST.get('panchayat')
        email=request.POST.get('email')
        password=request.POST.get('password')
        log=register(name=name,address=address,number=number,ward_number=ward_number,work_place=work_place,panchayat=panchayat,email=email,password=password)
        log.save()
    return render(request,'aregister.html')

def login(request):
    return render(request,'login.html')


   
def userquestion(request):
    fetch_patients = questions.objects.filter(status="pending")
    
    print(fetch_patients)
    user_data = userregisters.objects.all()
    user_dat=dict()
    for i in user_data:
        user_dat[i.id]=i.uname
    print(user_dat)
    dat=list()
    c=0
    for i in fetch_patients:
        dat.append({'name':user_dat[int(i.uid)],'date':i.date,'id':i.id,'question':i.question})
        #names.append(user_dat[int(i.studentname)])
        c+=1
    print(dat)   
    return render(request, 'userquestion.html', {'data': fetch_patients,'result':dat})
def viewrepply(request):
    uid=request.session['uid']
    user=questions.objects.filter(status="reply",uid=uid)
    return render(request,'viewreplyy.html',{'result':user})





def logout(request):
    session_keys = list(request.session.keys())
    for key in session_keys:
        del request.session[key]
    return redirect(index)




def ulogin(request):
    email = request.POST.get('email')
    password = request.POST.get('password')
    print(email)
    print(password)
    if email == 'admin@gmail.com' and password =='admin':
        request.session['logintdetail'] = email
        request.session['admin'] ='admin'
        return render(request,'index.html')

    elif register.objects.filter(email=email,password=password).exists():
        userdetails=register.objects.get(email=request.POST['email'],password=password)
        if userdetails.password == request.POST['password']:
            request.session['aid'] = userdetails.id
            request.session['name'] = userdetails.name

            request.session['email'] = email

            request.session['asha'] = 'asha'

            
            return render(request,'index.html')
    elif userregisters.objects.filter(email=email,password=password).exists():
        userdetails=userregisters.objects.get(email=request.POST['email'],password=password)
        if userdetails.password == request.POST['password']:
            request.session['uid'] = userdetails.id
            request.session['uname'] = userdetails.uname

            request.session['email'] = email

            request.session['user'] = 'user'

            
            return render(request,'index.html')





    

    else:
            return render(request, 'login.html', {'status': 'failed'})





def service(request):
    return render(request,'service.html')



def instruction(request):
    return render(request,'instruction.html')
    
def ashaprofile(request):
    a=request.session['aid']
    user=register.objects.get(id=a)
    return render(request,'ashaprofile.html',{'result':user})
    
def userprofile(request):
    a=request.session['uid']
    user=userregisters.objects.get(id=a)
    return render(request,'userprofile.html',{'result':user})

def ainstruction(request):
    if request.method=='POST':
        aser=request.POST.get('aser')
        ains=request.POST.get('ains')
        log=instructions(aser=aser,ains=ains)
        log.save()
    return render(request,'instruction.html')



def userregister(request):
    return render(request,'userregister.html')

def userreg(request):
    if request.method=='POST':
        uname=request.POST.get('uname')
        age=request.POST.get('age')
        number=request.POST.get('number')
        ward_no=request.POST.get('ward_no')
        place=request.POST.get('place')
        aadhar_number=request.POST.get('aadhar_number')
        email=request.POST.get('email')
        password=request.POST.get('password')
        log=userregisters(uname=uname,age=age,number=number,ward_no=ward_no,place=place,aadhar_number=aadhar_number,email=email,password=password)
        log.save()
    return render(request,'userregister.html')

def userview(request):
    return render(request,'userview.html')

def ashareport(request):
    return render(request,'ashareport.html')

def askquestion(request):
    return render(request,'askquestion.html')


def ucview(request):
    cview=userregisters.objects.all()
    return render(request,'userview.html',{'result':cview}) 
def viewashaworkerss(request):
    cview=register.objects.all()
    return render(request,'viewashaworkers.html',{'result':cview}) 
def viewvaccine(request):
    cview=vaccines.objects.all()
    return render(request,'viewvaccine.html',{'result':cview}) 

def ashareply(request,id):
    cview=questions.objects.get(id=id)
    
    return render(request,'reply.html',{'result':cview}) 
    
def adduserreply(request):
    if request.method=='POST':
        reply=request.POST.get('reply')
        qid=request.POST.get('qid')
        cview=questions.objects.get(id=qid)
        b=cview.question
        c=cview.date
        d=cview.uid
        log=questions(question=b,date=c,uid=d,reply=reply,status='reply',id=qid)
        log.save()

        return redirect(userquestion)       
def adduserask(request):
    if request.method=='POST':
        question=request.POST.get('question')
        date=request.POST.get('date')
        uid=request.session['uid']

        log=questions(question=question,date=date,uid=uid,status='pending')
        log.save()

        return render(request,'askquestion.html')


def udelete(request,id):
    mark=userregisters.objects.get(pk=id)
    mark.delete()
    return redirect(ucview) 

def pregreg(request):
    if request.method=='POST':
        ward_number=request.POST.get('ward_number')
        house_number=request.POST.get('house_number')
        name=request.POST.get('name')
        con_date=request.POST.get('con_date')
        last_periods_date=request.POST.get('last_periods_date')
        blood_group=request.POST.get('blood_group')
        weight=request.POST.get('weight')
        height=request.POST.get('height')
        dob=request.POST.get('dob')
        last_checkup_date=request.POST.get('last_checkup_date')
        disease=request.POST.get('disease')
        husbands_name=request.POST.get('husbands_name')
        log=pregregisters(ward_number=ward_number,house_number=house_number,name=name,con_date=con_date,last_periods_date=last_periods_date,blood_group=blood_group,weight=weight,height=height,dob=dob,last_checkup_date=last_checkup_date,disease=disease,husbands_name=husbands_name)
        log.save()
    return render(request,'pregregister.html')
    
def addashareport(request):
    if request.method=='POST':
        subject=request.POST.get('subject')
        description=request.POST.get('description')
        no_pregnent_womens=request.POST.get('no_pregnent_womens')
        no_vacination_child=request.POST.get('no_vacination_child')
        ward_no=request.POST.get('ward_no')
        panchayat=request.POST.get('panchayat')
        aid=request.session['aid']
        log=report(aid=aid,subject=subject,description=description,no_pregnent_womens=no_pregnent_womens,no_vacination_child=no_vacination_child,ward_no=ward_no,panchayat=panchayat)
        log.save()
    return render(request,'ashareport.html')


def famdet(request):
    if request.method=='POST':
        husbent_name=request.POST.get('husbent_name')
        husbent_age=request.POST.get('husbent_age')
        h_aadhar_number=request.POST.get('h_aadhar_number')
        husbent_job=request.POST.get('husbent_job')
        consult_hospital=request.POST.get('consult_hospital')
        wardname=request.POST.get('wardname')
        wardnumber=request.POST.get('wardnumber')
        log=familydetails(husbent_name=husbent_name,husbent_age=husbent_age,h_aadhar_number=h_aadhar_number,husbent_job=husbent_job,consult_hospital=consult_hospital,wardname=wardname,wardnumber=wardnumber)
        log.save()
    return render(request,'familydetail.html')


def asharep(request):
    if request.method=='POST':
        subject=request.POST.get('subject')
        description=request.POST.get('description')
        no_pregnent_womens=request.POST.get('no_pregnent_womens')
        no_vacination_child=request.POST.get('no_vacination_child')
        ward_no=request.POST.get('ward_no')
        panchayat=request.POST.get('panchayat')
        log=report(subject=subject,description=description,no_pregnent_womens=no_pregnent_womens,no_vacination_child=no_vacination_child,ward_no=ward_no,panchayat=panchayat)
        log.save()
    return render(request,'ashareports.html')

def vacreg(request):
    if request.method=='POST':
        father_name=request.POST.get('father_name')
        mother_name=request.POST.get('mother_name')
        child_name=request.POST.get('child_name')
        house_number=request.POST.get('house_number')
        ward_no=request.POST.get('ward_no')
        dob=request.POST.get('dob')
        age=request.POST.get('age')
        vaccine_details=request.POST.get('vaccine_details')
        phone_no=request.POST.get('phone_no')
        place=request.POST.get('place')
        a=request.session['aid']
        log=vaccines(aid=a,father_name=father_name,mother_name=mother_name,child_name=child_name,house_number=house_number,ward_no=ward_no,dob=dob,age=age,vaccine_details=vaccine_details,phone_no=phone_no,place=place)
        log.save()
    return render(request,'vaccine.html')



def viewashareport(request):
    return render(request,'viewashareport.html')


def arview(request):
    cview=report.objects.all()
    return render(request,'viewashareport.html',{'result':cview}) 
    
def pregnanttt(request):
    cview=pregregisters.objects.all()
    return render(request,'viewpregnant.html',{'result':cview}) 

def viewvaccinereport(request):
    return render(request,'viewvaccinereport.html')


def acview(request):
    cview=vaccines.objects.all()
    return render(request,'viewvaccinereport.html',{'result':cview}) 


def viewfamilydet(request):
    return render(request,'viewfamilydet.html')


def fcview(request):
    cview=familydetails.objects.all()
    return render(request,'viewfamilydet.html',{'result':cview}) 

def viewpreg(request):
    return render(request,'viewpreg.html')


def pcview(request):
    cview=pregregisters.objects.all()
    return render(request,'viewpreg.html',{'result':cview}) 

def ashaview(request):
    return render(request,'ashaview.html')


def aacview(request):
    cview=register.objects.all()
    return render(request,'ashaview.html',{'result':cview}) 