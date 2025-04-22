from django.shortcuts import render,redirect,get_object_or_404
from django.http import JsonResponse
from .models import Key,Address,PersonalInfo,LicenceDetails
from django.contrib import messages
from datetime import datetime
from django.db import IntegrityError
from cryptography.hazmat.primitives.asymmetric import ec
from cryptography.hazmat.primitives import serialization
from django.db.models.functions import ExtractMonth
#for the making digital signature
from ecdsa import SigningKey
import qrcode
from io import BytesIO
from base64 import b64encode, b64decode
#for auth
from django.contrib.auth.models import User
from django.contrib.auth.password_validation import validate_password
from django.core.exceptions import ValidationError
import re
# for login
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
# for mail
from django.core.mail import send_mail,EmailMessage#for file send in the mail
from django.template.loader import render_to_string


# Create your views here
@login_required(login_url='login')
def generate_keys_view(request):
    if request.method == 'POST':
        # Generate ECDSA keys with P-256 curve
        private_key = ec.generate_private_key(ec.SECP256K1())
        public_key = private_key.public_key()

        # Serialize keys to PEM format
        private_key_pem = private_key.private_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PrivateFormat.PKCS8,
            encryption_algorithm=serialization.NoEncryption()
        ).decode('utf-8')

        public_key_pem = public_key.public_bytes(
            encoding=serialization.Encoding.PEM,
            format=serialization.PublicFormat.SubjectPublicKeyInfo
        ).decode('utf-8')


        # Save keys to the database
        key = Key(private_key=private_key_pem, public_key=public_key_pem)
        key.save()

        # Return keys as JSON response
        return JsonResponse({'public_key': public_key_pem, 'private_key': private_key_pem})
    
    return render(request, 'superadmin/superadmin.html')


#for the form fill up by the admin user 
@login_required(login_url='login')
def useradmin(request):
    if request.method == 'POST':
        firstname = request.POST['first-name']
        middlename = request.POST['middle-name']
        lastname = request.POST['last-name']
        dob = request.POST['dob']
        licenceoffice = request.POST['licence-office']
        province = request.POST['province']
        district = request.POST['district']
        fathername = request.POST['father-name']
        issuedate = request.POST['issue-date']
        expirydate = request.POST['expiry-date']
        photo = request.FILES.get('photo')
        licenceno = request.POST['licence-no']
        citizen = request.POST['citizenship-no']
        category = request.POST['category']
        bloodgroup = request.POST['blood-group']
        contact = request.POST['contact-no']
        email = request.POST['email']

        try:
            # Step 1: Save the Address Information
            address = Address(
                licence_office=licenceoffice,
                province=province,
                district=district
            )
            address.save()

            # Step 2: Save the Personal Information
            if PersonalInfo.objects.filter(email=email).exists():
                messages.success(request,'email already exist')
                return redirect('useradmin')
            if PersonalInfo.objects.filter(contact_no=contact).exists():
                messages.success(request,'contact no already exist')
                return redirect('useradmin')
            if len(contact)!=10:
                messages.success(request,'contact no should 10 digit')
                return redirect('useradmin')
            personal_info = PersonalInfo(
                first_name=firstname,
                middle_name=middlename,
                last_name=lastname,
                dob=dob,
                father_name=fathername,
                blood_group=bloodgroup,
                contact_no=contact,
                email=email,
                photo=photo
            )
            personal_info.save()

            # Step 3: Save LicenceDetails Information
            if LicenceDetails.objects.filter(licence_no=licenceno).exists():
                messages.success(request,'licence no already exist')
                return redirect('useradmin')
            if LicenceDetails.objects.filter(citizenship_no=citizen).exists():
                messages.success(request,'citizen already exist')
                return redirect('useradmin')
            licence_details = LicenceDetails(
                personal_info=personal_info,
                address=address,
                licence_no=licenceno,
                citizenship_no=citizen,
                issue_date=issuedate,
                expiry_date=expirydate,
                category=category
            )
            date=datetime.now()
            licence_details.save()
            subject='License Collection'
            message=render_to_string('mailformat.html',{'name':f'{firstname} {middlename} {lastname}','date':date,'licence':licenceno})
            from_email='ashishrajpoudel28@gmail.com'
            recipient_list=[email]
            variable=EmailMessage(subject,message,from_email,recipient_list)
            variable.send(fail_silently=True)
            messages.success(request,f"Details of {firstname} has been sucessfully submitted!!")

            
        except IntegrityError as e:
            messages.error(request, f'Error: {e}')
        return redirect('useradmin')

    return render(request, 'useradmin/admin_user.html')

#for show the data in the web
@login_required(login_url='login')
def licence_table(request):
    data=LicenceDetails.objects.select_related('personal_info', 'address').filter(is_printed=False)

    context={
        
        'data':data
    }
    return render(request,'useradmin/Licence_table.html',context)

@login_required(login_url='login')
def printed_licence_table(request):
    data=LicenceDetails.objects.select_related('personal_info', 'address').filter(is_printed=True)

    context={
        
        'data':data
    }
    return render(request,'useradmin/printed_licence.html',context)
    

#for the licence front print
@login_required(login_url='login')
def licence_front(request, id):
    val =LicenceDetails.objects.select_related('personal_info', 'address').get(id=id)
    val.is_printed=True
    val.save()
    
    # Construct the data string to sign
    data_to_sign = f"{val.personal_info.first_name}|{val.personal_info.middle_name}|{val.personal_info.last_name}|{val.licence_no}|{val.issue_date}|{val.expiry_date}|{val.category}|{val.personal_info.blood_group}|{val.address.licence_office}"
    
    # Retrieve the latest private key
    private_key_obj = Key.objects.latest('id')  
    private_key_pem = private_key_obj.private_key  
    
    # Conversion of the PEM string back to a SigningKey object
    private_key = SigningKey.from_pem(private_key_pem.encode())
    
    # Generation of the digital signature
    signature = private_key.sign(data_to_sign.encode())
    final_signature = b64encode(signature).decode()
    print('digital signature:',final_signature)
    
    # Combine data to sign and final signature with $ separator
    qr_data = f"{data_to_sign}${final_signature}"
    
    # Generate the QR code
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(qr_data)
    qr.make(fit=True)
    
    img = qr.make_image(fill='black', back_color='white')

    # Save QR code image to a BytesIO object
    buffer = BytesIO()#the code saves it to buffer in memory using img.save(buffer, format="PNG"). This allows you to handle and manipulate the image without writing to or reading from disk.
    img.save(buffer, format="PNG")
    qr_code_img = buffer.getvalue()
    
    # Convert QR code image to base64 to embed in HTML
    qr_code_base64 = b64encode(qr_code_img).decode('utf-8')

    return render(request, 'useradmin/licence_front.html', {
        'val': val,
        'qr_code_base64': qr_code_base64
    })
@login_required(login_url='login')
def createsuperadmin(request):
 
    if request.method =='POST': 
        email=request.POST.get('email')
        password=request.POST.get('password')
        cpassword=request.POST.get('confirmpassword')
        try:
            
            if not re.search(r"[A-Z]",password):
                messages.error(request,'your password contain at least one Capital letter')
                return redirect('createsuperuser')
            if not re.search(r"\d",password):
                messages.error(request,'your password contain at least one Digit')
                return redirect('createsuperuser')
            validate_password(password)
            if password == cpassword:
                if User.objects.filter(username=email).exists():
                    messages.info(request,'username already exist')
                    return redirect('createsuperuser')
                elif User.objects.filter(email=email).exists():
                    messages.info(request,'email already exist')
                    return redirect('createsuperuser')
                else:
                    User.objects.create_user(username=email,email=email,password=password)
                    messages.success(request,'data submitted sucessfully!!')
                    return redirect('createsuperuser')
            
            else:
                messages.error(request,'password and confirm password doesnot match')
                return redirect('createsuperuser')
        except ValidationError as e:
            for error in e.messages:
                messages.error(request,error)
            return redirect('createsuperuser')
        
    return render(request,'superadmin/signup.html')
@login_required(login_url='login')
def createxadmin(request):
    if request.method =='POST': 
        email=request.POST.get('email')
        password=request.POST.get('password')
        cpassword=request.POST.get('confirmpassword')
        try:
            
            if not re.search(r"[A-Z]",password):
                messages.error(request,'your password contain at least one Capital letter')
                return redirect('createxadmin')
            if not re.search(r"\d",password):
                messages.error(request,'your password contain at least one Digit')
                return redirect('createxadmin')
            validate_password(password)
            if password == cpassword:
                if User.objects.filter(username=email).exists():
                    messages.info(request,'username already exist')
                    return redirect('createxadmin')
                elif User.objects.filter(email=email).exists():
                    messages.info(request,'email already exist')
                    return redirect('createxadmin')
                else:
                    User.objects.create_user(username=email,email=email,password=password)
                    messages.success(request,'data submitted sucessfully!!')
                    return redirect('createxadmin')
            
            else:
                messages.error(request,'password and confirm password doesnot match')
                return redirect('createxadmin')
        except ValidationError as e:
            for error in e.messages:
                messages.error(request,error)
            return redirect('createxadmin')
        
    return render(request,'superadmin/createxadmin.html')

@login_required(login_url='login')
def createuseradmin(request):
    if request.method =='POST': 
        email=request.POST.get('email')
        password=request.POST.get('password')
        cpassword=request.POST.get('confirmpassword')
        try:
        
            if not re.search(r"[A-Z]",password):
                messages.error(request,'your password contain at least one Capital letter')
                return redirect('createuseradmin')
            if not re.search(r"\d",password):
                messages.error(request,'your password contain at least one Digit')
                return redirect('createuseradmin')
            validate_password(password)
            if password == cpassword:
                if User.objects.filter(username=email).exists():
                    messages.info(request,'username already exist')
                    return redirect('createuseradmin')
                elif User.objects.filter(email=email).exists():
                    messages.info(request,'email already exist')
                    return redirect('createuseradmin')
                else:
                    User.objects.create_user(username=email,email=email,password=password)
                    messages.success(request,'data submitted sucessfully!!')
                    return redirect('createuseradmin')
            
            else:
                messages.error(request,'password and confirm password doesnot match')
                return redirect('createuseradmin')
        except ValidationError as e:
            for error in e.messages:
                messages.error(request,error)
            return redirect('createuseradmin')
        
    return render(request,'xadmin/createuseradmin.html')

@login_required(login_url='login')
def xadmin(request):
    # for gender
    male=PersonalInfo.objects.filter(gender="Male")
    male_no=male.count()
    female=PersonalInfo.objects.filter(gender="Female")
    female_no=female.count()
    other=PersonalInfo.objects.filter(gender="Others")
    other_no=other.count()
    print('Female:',female_no)
    print("other:",other_no)
    #for geography
    province1=Address.objects.filter(licence_office=101)
    p1_count=province1.count()
    province2=Address.objects.filter(licence_office=102)
    p2_count=province2.count()
    province3=Address.objects.filter(licence_office=103)
    p3_count=province3.count()
    province4=Address.objects.filter(licence_office=104)
    p4_count=province4.count()
    province5=Address.objects.filter(licence_office=105)
    p5_count=province5.count()
    province6=Address.objects.filter(licence_office=106)
    p6_count=province6.count()
    province7=Address.objects.filter(licence_office=107)
    p7_count=province7.count()
    
    total=p1_count+p2_count+p3_count+p4_count+p5_count+p6_count+p7_count
    if total==0:
        total=1

    #for date
    sep= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=9)
    sep_count=sep.count()
    jan= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=1)
    jan_count=jan.count()
    feb= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=2)
    feb_count=feb.count()
    mar= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=3)
    mar_count=mar.count()
    apr= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=4)
    apr_count=apr.count()
    may= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=5)
    may_count=may.count()
    jun= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=6)
    jun_count=jun.count()
    july= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=7)
    july_count=july.count()
    aug= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=8)
    aug_count=aug.count()
    oct= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=10)
    oct_count=oct.count()
    nov= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=11)
    nov_count=nov.count()
    dec= LicenceDetails.objects.annotate(month=ExtractMonth('issue_date')).filter(month=12)
    dec_count=dec.count()
    
    context={
        'male':male_no,
        'female':female_no,
        'other':other_no,
        'p1':(p1_count/total)*100,
        'p2':(p2_count/total)*100,
        'p3':(p3_count/total)*100,
        'p4':(p4_count/total)*100,
        'p5':(p5_count/total)*100,
        'p6':(p6_count/total)*100,
        'p7':(p7_count/total)*100,
        #for date
        'jan':jan_count,
        'feb':feb_count,
        'mar':mar_count,
        'apr':apr_count,
        'may':may_count,
        'jun':jun_count,
        'july':july_count,
        'aug':aug_count,
        'sep':sep_count,
        'oct':oct_count,
        'nov':nov_count,
        'dec':dec_count
    }

    return render(request,'xadmin/xadmin.html',context)

def log_in(request):
    if request.method == 'POST':
        usertype = request.POST.get('usertype')
        email = request.POST.get('username')
        password = request.POST.get('password')
        
        if not usertype or not email or not password:
            messages.error(request, 'All fields are required.')
            return redirect('login')
        
        user = authenticate(request, username=email, password=password)
        if user is not None:
            login(request, user)
            messages.success(request, f'{request.user} logged in successfully! Welcome to DOTM')
            
            # Redirect based on usertype
            if usertype == 'superadmin':
                return redirect('superadmin')
            elif usertype == 'xadmin':
                return redirect('xadmin')
            elif usertype == 'useradmin':
                return redirect('useradmin')
            else:
                messages.error(request, 'Invalid user type. Please try again.')
                return redirect('login')
        else:
            messages.error(request, 'Invalid credentials. Please try again.')
            return redirect('login')

    return render(request, 'auth/login.html')

def log_out(request):
    logout(request)
    messages.success(request,'logout sucessfully!')
    return redirect("login")
    



