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
		messages.warning(request,"Activity Details successfully saved")
	return HttpResponse('Details added')

@csrf_exempt
def cand_performance(request):
	if request.method == 'POST':
		candidate_performance = CandidatePerformance()
		candidate_performance.cand_per_gusid = request.user
		if 'performance_exam' in request.POST:
			candidate_performance.cand_per_exam = request.POST['performance_exam'] 
		if 'performance_pass' in request.POST:
			candidate_performance.cand_per_ypass = request.POST['performance_pass']
		if 'performance_marks' in request.POST:
			candidate_performance.cand_per_marks = request.POST['performance_marks']
		if 'performance_year' in request.POST:
			candidate_performance.cand_per_year = request.POST['performance_year']
		candidate_performance.save()
		messages.warning(request,"performance details successfully saved")
	return HttpResponse("details added")

@csrf_exempt
def cand_nat_recog(request):
	if request.method == 'POST':
		candidate_nat_reg = CandidateNationalRecognition()
		candidate_nat_reg.cand_nat_reg_gus = request.user
		if 'recognition_recognitions' in request.POST:
			candidate_nat_reg.cand_nat_reg_details = request.POST['recognition_recognitions']
		if 'recognition_year' in request.POST:
			candidate_nat_reg.cand_nat_reg_year = request.POST['recognition_year']
		candidate_nat_reg.cand_nat_reg_isused = 0
		candidate_nat_reg.save()
		# messages.warning(request,"National Recognition details updated")
	return HttpResponse("details added")
	
@csrf_exempt
def cand_initiatives(request):
	if request.method == 'POST':
		candidate_initiatives = CandidateInitiatives()
		candidate_initiatives.cand_ini_gusid = request.user
		if 'initiatives_univ' in request.POST:
			candidate_initiatives.cand_ini_level = request.POST['initiatives_univ']
		if 'initiatives_seminar' in request.POST:
			candidate_initiatives.cand_ini_name = request.POST['initiatives_seminar']
		if 'initiatives_place' in request.POST:
			candidate_initiatives.cand_ini_venue = request.POST['initiatives_place']
		if 'initiatives_d' in request.POST:
			candidate_initiatives.cand_ini_date = request.POST['initiatives_d']
		candidate_initiatives.cand_ini_isused = 0
		candidate_initiatives.save()
	return HttpResponse('details added')

@csrf_exempt
def cand_internship(request):
	if request.method == 'POST':
		candidate_internship = CandidateInternship()
		candidate_internship.cand_int_gusid = request.user
		if 'internship_comp' in request.POST:
			candidate_internship.cand_int_name = request.POST['internship_comp']
		if 'internship_sdate' in request.POST:
			candidate_internship.cand_int_start = request.POST['internship_sdate']
		if 'internship_edate' in request.POST:
			candidate_internship.cand_int_end = request.POST['internship_edate']
		if 'internship_stipend' in request.POST:
			candidate_internship.cand_int_stipend = request.POST['internship_stipend']
		candidate_internship.save()
	return HttpResponse('details saved')

@csrf_exempt
def cand_journals(request):
	if request.method == 'POST':
		candidate_journals = CandidateJournals()
		print request.POST['journels_title']
		candidate_journals.cand_jour_gusid = request.user
		if 'journels_title' in request.POST:
			candidate_journals.cand_jour_title = request.POST['journels_title']
		if 'journels_Fauthor' in request.POST:
			candidate_journals.cand_jour_fauthor = request.POST['journels_Fauthor']
		if 'journels_oauthors' in request.POST:
			candidate_journals.cand_jour_oauthor = request.POST['journels_oauthors']
		if 'journels_jname' in request.POST:
			candidate_journals.cand_jour_name = request.POST['journels_jname']
		if 'journels_dt' in request.POST:
			candidate_journals.cand_jour_date = request.POST['journels_dt']
		if 'journels_vol' in request.POST:
			candidate_journals.cand_jour_vol = request.POST['journels_vol']
		if 'journels_ifactor' in request.POST:
			candidate_journals.cand_jour_impact = request.POST['journels_ifactor']
		if 'journels_Citationindex' in request.POST:
			candidate_journals.cand_jour_citation = request.POST['journels_Citationindex']
		if 'journels_Indexed' in request.POST:
			candidate_journals.cand_jour_indexed = request.POST['journels_Indexed']
		candidate_journals.save()
	return HttpResponse('details saved')

@csrf_exempt
def cand_paper_conference(request):
	if request.method == 'POST':
		print request.POST['conferences_tt']
		print request.POST['conferences_a']
		candidate_paper_conference = CandidatePaperConference()
		candidate_paper_conference.cand_pap_conf_gusid = request.user
		if 'conferences_tt' in request.POST:
			candidate_paper_conference.cand_pap_conf_title = request.POST['conferences_tt']
		if 'conferences_a' in request.POST:
			candidate_paper_conference.cand_pap_conf_author = request.POST['conferences_a']
		if 'conferences_cname' in request.POST:
			candidate_paper_conference.cand_pap_conf_cname = request.POST['conferences_cname']
		if 'conferences_dd' in request.POST:
			candidate_paper_conference.cand_pap_conf_date = request.POST['conferences_dd']
		if 'conferences_dr' in request.POST:
			candidate_paper_conference.cand_pap_conf_duration = request.POST['conferences_dr']
		if 'conferences_ins' in request.POST:
			candidate_paper_conference.cand_pap_conf_org = request.POST['conferences_ins']
		if 'conferences_pl' in request.POST:
			candidate_paper_conference.cand_pap_conf_venue = request.POST['conferences_pl']
		if 'conferences_opt' in request.POST:
			candidate_paper_conference.cand_pap_conf_status = request.POST['conferences_opt']
		candidate_paper_conference.save()
	return HttpResponse('details saved')

@csrf_exempt
def cand_development(request):
	if request.method == 'POST':
		candidate_development = CandidateDevelopment()
		candidate_development.cand_dev_gusid = request.user
		if 'Journel_soft' in request.POST:
			candidate_development.cand_dev_name = request.POST['Journel_soft']
		if 'Journel_mentor' in request.POST:
			candidate_development.cand_dev_faculty = request.POST['Journel_mentor']
		candidate_development.save()
	return HttpResponse('details saved')


