from django.shortcuts import render
from django.http import HttpResponse
from apps.backends.models import *
from django.core.mail import send_mail
from django.core.mail import EmailMultiAlternatives
from django.core.mail import EmailMessage
from django.contrib.auth.hashers import PBKDF2PasswordHasher
from django.contrib.auth import authenticate, login
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
import datetime
from django.views.decorators.csrf import csrf_exempt
from django.contrib import messages
import random

# Create your views here.

@csrf_exempt
def personal_details(request):
	data = ''
	print request.GET['candidate_name']
	print request.GET['candidate_regno']
	if request.method == 'GET':
		personal_detail = CandidateMaster()
		personal_detail.candidate_name = request.GET['candidate_name']
		if 'candidate_type' in request.GET:
			personal_detail.candidate_type = request.GET['candidate_type']
		personal_detail.candidate_year = datetime.datetime.now()
		personal_detail.candidate_date = datetime.datetime.now()
		if 'candidate_regno' in request.GET:
			personal_detail.candidate_reg_number = request.GET['candidate_regno']
		personal_detail.save()
	data = "success"
	return HttpResponse(data)

def user_signup(request):
	verify_code = ''
		# print request.POST['candidate_name']
	global_check = GlobalUsers.objects.filter(gus_username= request.POST['username']).values_list('gus_email', flat=True)
	username_check = global_check.values_list('gus_username', flat=True)
	if request.method == 'POST' and request.POST['username'] not in username_check:
		messages.warning(request,"Profile added succesfully")
		verify_code = str(random.randint(10000,99999))
		hasher = PBKDF2PasswordHasher()
		global_user = GlobalUsers()
		if 'username' in request.POST:
			global_user.gus_username = request.POST['username']
		if 'profilename' in request.POST:
			print request.POST['profilename']
			global_user.gus_name = request.POST['profilename']
		global_user.gus_password = hasher.encode(password= request.POST['password'] , salt='salt',iterations= 50000)
		if 'candidate_type' in request.POST:
			global_user.gus_type = request.POST['candidate_type']
		if 'candidate_dob' in request.POST:
			global_user.gus_dob = request.POST['candidate_dob']
		if 'email' in request.POST:
			global_user.gus_email = request.POST['email']
		global_user.gus_modifiedon = datetime.datetime.now()
		global_user.gus_isused = 1
		global_user.gus_verify = verify_code
		global_user.save()
		subject = "email verification for profile generation in SRM portal"            
		message = "please verify your email by typing the following code to activate your account" + verify_code
		sender = "digu35@gmail.com"
		send_mail(subject, message, sender, [request.POST['email']])
	else:
		if request.POST['username'] in username_check:
			messages.warning(request,"Registration Id already added")


	return render(request,'home/homepage.html')

def user_login(request):
	if request.method == 'POST':
		username = request.POST['registration_number']
		password = request.POST['password']
		try:
			user = authenticate(username=username, password= password)
			if user is not None:
				login(request,user)
			else:
				messages.warning(request,"Wrong Id or password")
				return render(request,'home/homepage.html')
		except ObjectDoesNotExist:
			pass
	return render(request,'dashboard/dashboard.html')


def reset_password(request):
	verify_code = ''
	if request.method =='POST':
		user_check = GlobalUsers.objects.get(gus_username= username)
		email = user_check.gus_email
		verify_code = str(random.randint(10000,99999))
		hasher = PBKDF2PasswordHasher()
		user_check.gus_password = hasher.encode(password= verify_code , salt='salt',iterations= 50000)
		user_check.save()
		subject = "Password reset mail SRM university profile portal"            
		message = "Please consider the new password for your profile" + verify_code + "You can change the password in your profile after signing in"
		sender = "digu35@gmail.com"
		send_mail(subject, message, sender, [email])
	return HttpResponse("success")

@csrf_exempt
def cand_activity(request):
	if request.user:
		print "user authentication worked"
	if request.method == 'POST':
		candidate_activity = CandidateActivity()
		print request.user.gus_userid
		candidate_activity.cand_act_gusid = request.user
		if 'activity_name' in request.POST:
			candidate_activity.cand_act_name = request.POST['activity_name']
		if 'activity_date' in request.POST:
			candidate_activity.cand_act_date = request.POST['activity_date']
		if 'activity_nature' in request.POST:
			candidate_activity.cand_act_nature = request.POST['activity_nature']
		if 'activity_year' in request.POST:
			candidate_activity.cand_act_year = request.POST['activity_year']
		if  'activity_prize' in request.POST:
			candidate_activity.cand_act_prize = request.POST['activity_prize']
		candidate_activity.save()
		messages.warning(request,"Activity Details succesfully saved")
	return HttpResponse('Details added')
