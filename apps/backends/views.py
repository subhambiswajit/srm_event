from django.shortcuts import render
from django.http import *
from django.shortcuts import resolve_url
from apps.backends.models import *
from django.core.mail import send_mail
from django.core.mail import EmailMultiAlternatives
from django.core.mail import EmailMessage
from django.contrib.auth.hashers import PBKDF2PasswordHasher
from django.contrib.auth import authenticate, login,  logout
from django.core.exceptions import ObjectDoesNotExist
from django.contrib.auth.decorators import login_required
from django.conf import settings
from django.db.models import Q
from django.core import serializers

import json
import datetime
from django.views.decorators.csrf import csrf_exempt
from django.contrib import messages
import random
import os

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
		print request.FILES
		if 'profile_image' in request.FILES:
			print "world isbad"
			data = request.FILES.get('profile_image').read()
			if os.path.exists('media/profile_picture/'):
				with open('media/profile_picture/' + str(global_user.gus_username) +str(global_user.gus_email) + '.png', 'wb+') as f:
					f.write(data)
			else:
				os.makedirs('media/profile_picture/')
				with open('media/profile_picture/' + str(global_user.gus_username) +str(global_user.gus_email) + '.png', 'wb+') as f:
					f.write(data)
			global_user.gus_picture = request.FILES.get('profile_image')
		global_user.gus_modifiedon = datetime.datetime.now()
		global_user.gus_isused = 1
		global_user.gus_verify = verify_code
		global_user.save()
		# subject = "email verification for profile generation in SRM portal"            
		# message = "please verify your email by typing the following code to activate your account" + verify_code
		# sender = "digu35@gmail.com"
		# send_mail(subject, message, sender, [request.POST['email']])
	else:
		if request.POST['username'] in username_check:
			messages.warning(request,"Registration Id already added")

	return render(request,'home/homepage.html')

def user_login(request):

	redirect_to =resolve_url(settings.LOGIN_REDIRECT_URL)
	if request.user.is_authenticated():
		return HttpResponseRedirect(redirect_to)
	if request.method == 'POST':
		username = request.POST['registration_number']
		password = request.POST['password']
		try:
			user = authenticate(username=username, password= password)
			if user is not None:
				login(request,user)
				redirect_to = resolve_url(settings.LOGIN_REDIRECT_URL)
			else:
				messages.warning(request,"Wrong Id or password")
				return render(request,'home/homepage.html')
		except ObjectDoesNotExist:
			pass
	return HttpResponseRedirect(redirect_to)

def user_logout(request):
	logout(request)
	return HttpResponseRedirect('/')

def dashboard(request):
	if request.user.is_authenticated():
		return render (request,'dashboard/dashboard.html')
	else:
		return HttpResponseRedirect('/')
	return render (request,'dashboard/dashboard.html')

def home(request):
	redirect_to =resolve_url(settings.LOGIN_REDIRECT_URL)
	if request.user.is_authenticated():
		return HttpResponseRedirect(redirect_to)
	else:
		return render(request,'home/homepage.html')
	return render (request,'home/homepage.html')



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
			print request.POST['activity_date']
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

@login_required
def user_details(request):
	render_data ={}
	render_data ['gus_type'] = request.user.gus_type
	if request.user.is_authenticated():
		if request.user.gus_type == 'Student':
			activity = CandidateActivity.objects.filter(cand_act_gusid = request.user)
			render_data['activity'] = activity
			performance = CandidatePerformance.objects.filter(cand_per_gusid= request.user)
			render_data['performance'] = performance
			nationalrecognition = CandidateNationalRecognition.objects.filter(cand_nat_reg_gus= request.user)
			render_data['nationalrecognition'] = nationalrecognition
			initiatives = CandidateInitiatives.objects.filter(cand_ini_gusid= request.user)
			render_data['initiatives'] = initiatives
			internship = CandidateInternship.objects.filter(cand_int_gusid= request.user)
			render_data['internship'] = internship
			candidatejournals = CandidateJournals.objects.filter(cand_jour_gusid= request.user)
			render_data['candidatejournals'] = candidatejournals
			candidatepaperconference = CandidatePaperConference.objects.filter(cand_pap_conf_gusid = request.user)
			render_data['candidatepaperconference'] = candidatepaperconference
			candidatedev = CandidateDevelopment.objects.filter(cand_dev_gusid= request.user)
			render_data['candidatedev'] = candidatedev
		else:
			facawards = FacAwards.objects.filter(fac_awards_gusid = request.user)
			render_data['facawards'] = facawards
			facconsultancy = FacConsultancyActivities.objects.filter(fac_con_act_gusid = request.user)
			render_data['facconsultancy'] = facconsultancy
			facnatconf = FacNationalConference.objects.filter(fac_nat_conf_gusid = request.user)
			render_data['facnatconf'] = facnatconf
			facintconf = FacInternationalConference.objects.filter(fac_int_conf_gusid = request.user)
			render_data['facintconf'] = facintconf
			facintjour = FacInternatonalJournals.objects.filter(fac_int_jour_gusid = request.user)
			render_data['facintjour'] = facintjour
			facnatjour = FacNationalJournals.objects.filter(fac_nat_jour_gusid = request.user)
			render_data['facnatjour'] = facnatjour
			facpub = FacManualPublications.objects.filter(fac_man_pub_gusid = request.user)
			render_data['facpub'] = facpub
			facstaffact = FacSeminars.objects.filter(fac_sem_gusid = request.user)
			render_data['facstaffact'] = facstaffact
			facsoftdev = FacSoftwareDevelopment.objects.filter(fac_soft_dev_gusid = request.user)
			render_data['facsoftdev'] = facsoftdev

	return render (request,'viewdetails/viewdetails.html',render_data)

@csrf_exempt
def user_details_search(request):
	search_data = ''
	render_data ={}
	user_data ={}
	filter_data =[]
	if request.method == 'POST':
		if 'searchdata' in request.POST:
			searchdata = request.POST['searchdata']
			user_data = GlobalUsers.objects.filter(Q(gus_username__icontains = searchdata) | Q(gus_name__icontains = searchdata))
			for t in user_data:
				dat = {}
				dat['id'] = t.gus_userid
				dat['name'] = t.gus_name
				dat['username'] = t.gus_username
				dat['type'] = t.gus_type
				filter_data.append(dat)
			render_data['searchdata'] = filter_data
			print render_data
	return HttpResponse(json.dumps(render_data),content_type='application/json')

@csrf_exempt
@login_required
def foreign_profile_generation(request, user_id):
	user_check_id = user_id
	render_data ={}
	user_data = GlobalUsers.objects.get(gus_userid = user_check_id)
	render_data['gus_type'] = user_data.gus_type
	if request.method == 'GET':
		if user_data.gus_type == 'Student':
			activity = CandidateActivity.objects.filter(cand_act_gusid__gus_userid = user_check_id)
			render_data['activity'] = activity
			performance = CandidatePerformance.objects.filter(cand_per_gusid__gus_userid= user_check_id)
			render_data['performance'] = performance
			nationalrecognition = CandidateNationalRecognition.objects.filter(cand_nat_reg_gus__gus_userid= user_check_id)
			render_data['nationalrecognition'] = nationalrecognition
			initiatives = CandidateInitiatives.objects.filter(cand_ini_gusid__gus_userid= user_check_id)
			render_data['initiatives'] = initiatives
			internship = CandidateInternship.objects.filter(cand_int_gusid__gus_userid= user_check_id)
			render_data['internship'] = internship
			candidatejournals = CandidateJournals.objects.filter(cand_jour_gusid__gus_userid= user_check_id)
			render_data['candidatejournals'] = candidatejournals
			candidatepaperconference = CandidatePaperConference.objects.filter(cand_pap_conf_gusid__gus_userid = user_check_id)
			render_data['candidatepaperconference'] = candidatepaperconference
			candidatedev = CandidateDevelopment.objects.filter(cand_dev_gusid__gus_userid= user_check_id)
			render_data['candidatedev'] = candidatedev
		else:
			facawards = FacAwards.objects.filter(fac_awards_gusid = user_check_id)
			print facawards
			render_data['facawards'] = facawards
			facconsultancy = FacConsultancyActivities.objects.filter(fac_con_act_gusid__gus_userid = user_check_id)
			render_data['facconsultancy'] = facconsultancy
			facnatconf = FacNationalConference.objects.filter(fac_nat_conf_gusid__gus_userid = user_check_id)
			render_data['facnatconf'] = facnatconf
			facintconf = FacInternationalConference.objects.filter(fac_int_conf_gusid__gus_userid = user_check_id)
			render_data['facintconf'] = facintconf
			facintjour = FacInternatonalJournals.objects.filter(fac_int_jour_gusid__gus_userid = user_check_id)
			render_data['facintjour'] = facintjour
			facnatjour = FacNationalJournals.objects.filter(fac_nat_jour_gusid__gus_userid = user_check_id)
			render_data['facnatjour'] = facnatjour
			facpub = FacManualPublications.objects.filter(fac_man_pub_gusid__gus_userid = user_check_id)
			render_data['facpub'] = facpub
			facstaffact = FacSeminars.objects.filter(fac_sem_gusid__gus_userid = user_check_id)
			render_data['facstaffact'] = facstaffact
			facsoftdev = FacSoftwareDevelopment.objects.filter(fac_soft_dev_gusid__gus_userid = user_check_id)
			render_data['facsoftdev'] = facsoftdev

	return render (request,'viewdetails/viewdetails.html',render_data)



@login_required
def fac_awards(request):

	return render(request,'faculty/fac_awards.html')

@login_required
def fac_consultancy(request):

	return render(request,'faculty/fac_consultancy_activities.html')

@login_required
def fac_intconf(request):

	return render(request,'faculty/fac_international_conference.html')

@login_required
def fac_intjour(request):

	return render(request,'faculty/fac_international_journal.html')

@login_required
def fac_natconf(request):

	return render(request,'faculty/fac_national_conference.html')

@login_required
def fac_natjour(request):

	return render(request,'faculty/fac_national_journals.html')

@login_required
def fac_pub(request):

	return render(request,'faculty/fac_publication_details.html')

@login_required
def fac_seminar(request):

	return render(request,'faculty/fac_seminars.html')

@login_required
def fac_soft_dev(request):

	return render(request,'faculty/fac_software_development.html')


@csrf_exempt
def fac_awards_save(request):
	if request.method == 'POST':
		fac_awards = FacAwards()
		fac_awards.fac_awards_gusid = request.user
		if 'award_fac_name' in request.POST:
			fac_awards.fac_awards_name = request.POST['award_fac_name']
		if 'award_fac_desc' in request.POST:
			fac_awards.fac_awards_details = request.POST['award_fac_desc']
		fac_awards.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_consact_save(request):
	if request.method == 'POST':
		fac_consultancy = FacConsultancyActivities()
		fac_consultancy.fac_con_act_gusid = request.user
		if 'consultancy_nature' in request.POST:
			fac_consultancy.fac_con_act_nature = request.POST['consultancy_nature']
		if 'consultancy_client' in request.POST:
			fac_consultancy.fac_con_act_client = request.POST['consultancy_client']
		if 'consultancy_department' in request.POST:
			fac_consultancy.fac_con_act_dept = request.POST['consultancy_department']
		if 'consultancy_revenue' in request.POST:
			fac_consultancy.fac_con_act_revenue = request.POST['consultancy_revenue']
		fac_consultancy.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_intconf_save(request):
	if request.method == 'POST':
		fac_intconf = FacInternationalConference()
		fac_intconf.fac_int_conf_gusid = request.user
		if 'international_conference_title' in request.POST:
			fac_intconf.fac_int_conf_title = request.POST['international_conference_title']
		if 'international_conference_author' in request.POST:
			fac_intconf.fac_int_conf_author =request.POST['international_conference_author']
		if 'international_conference_name' in request.POST:
			fac_intconf.fac_int_conf_name = request.POST['international_conference_name']
		if 'international_conference_journal_name' in request.POST:
			fac_intconf.fac_int_conf_journame = request.POST['international_conference_journal_name']
		if 'international_conference_date' in request.POST:
			fac_intconf.fac_int_conf_date = request.POST['international_conference_date']
		if 'international_conference_place' in request.POST:
			fac_intconf.fac_int_conf_venue = request.POST['international_conference_place'] 
		if 'international_conference_published' in request.POST:
			fac_intconf.fac_int_conf_status = request.POST['international_conference_published']
		fac_intconf.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_intjour_save(request):
	if request.method == 'POST':
		fac_intjour = FacInternatonalJournals()
		fac_intjour.fac_int_jour_gusid = request.user
		if 'international_journal_title' in request.POST:
			fac_intjour.fac_int_jour_title = request.POST['international_journal_title']
		if 'international_journal_author' in request.POST:
			fac_intjour.fac_int_jour_author = request.POST['international_journal_author']
		if 'international_journal_oauthor' in request.POST:
			fac_intjour.fac_int_jour_oauthor = request.POST['international_journal_oauthor']
		if 'international_journal_journal_name' in request.POST:
			fac_intjour.fac_int_jour_name = request.POST['international_journal_journal_name']
		if 'international_journal_date' in request.POST:
			fac_intjour.fac_int_jour_date = request.POST['international_journal_date']
		if 'international_journal_volume' in request.POST:
			fac_intjour.fac_int_jour_vol = request.POST['international_journal_volume']
		if 'international_journal_factor' in request.POST:
			fac_intjour.fac_int_jour_impact = request.POST['international_journal_factor']
		if 'international_journal_citation' in request.POST:
			fac_intjour.fac_int_jour_citation = request.POST['international_journal_citation']
		if 'international_journal_indexed' in request.POST:
			fac_intjour.fac_int_jour_status = request.POST['international_journal_indexed']
		fac_intjour.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_natconf_save(request):
	if request.method == 'POST':
		fac_natconf = FacNationalConference()
		fac_natconf.fac_nat_conf_gusid = request.user
		if 'national_conference_title' in request.POST:
			fac_natconf.fac_nat_conf_title = request.POST['national_conference_title']
		if 'national_conference_author' in request.POST:
			fac_natconf.fac_nat_conf_author = request.POST['national_conference_author']
		if 'national_conference_name' in request.POST:
			fac_natconf.fac_nat_conf_name = request.POST['national_conference_name']
		if 'national_conference_journal' in request.POST:
			fac_natconf.fac_nat_conf_journame = request.POST['national_conference_journal']
		if 'national_conference_date' in request.POST:
			fac_natconf.fac_nat_conf_date = request.POST['national_conference_date']
		if 'national_conference_place' in request.POST:
			fac_natconf.fac_nat_conf_venue = request.POST['national_conference_place']
		if 'national_conference_status' in request.POST:
			fac_natconf.fac_nat_conf_status = request.POST['national_conference_status']
		fac_natconf.save()
	return HttpResponse('details saved')


@csrf_exempt
def fac_natjour_save(request):
	if request.method == 'POST':
		fac_natjour = FacNationalJournals()
		fac_natjour.fac_nat_jour_gusid = request.user
		if 'national_journal_title' in request.POST:
			fac_natjour.fac_nat_jour_title = request.POST['national_journal_title']
		if 'national_journal_author' in request.POST:
			fac_natjour.fac_nat_jour_author = request.POST['national_journal_author']
		if 'national_journal_oauthor' in request.POST:
			fac_natjour.fac_nat_jour_oauthor = request.POST['national_journal_oauthor']
		if 'national_journal_name' in request.POST:
			fac_natjour.fac_nat_jour_name = request.POST['national_journal_name']
		if 'national_journal_date' in request.POST:
			fac_natjour.fac_nat_jour_date = request.POST['national_journal_date']
		if 'national_journal_volume' in request.POST:
			fac_natjour.fac_nat_jour_volume = request.POST['national_journal_volume']
		if 'national_journal_factor' in request.POST:
			fac_natjour.fac_nat_jour_impact = request.POST['national_journal_factor']
		if 'national_journal_citation' in request.POST:
			fac_natjour.fac_nat_jour_citation = request.POST['national_journal_citation']
		if 'national_journal_indexed' in request.POST:
			fac_natjour.fac_nat_jour_status = request.POST['national_journal_indexed']
		fac_natjour.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_pub_save(request):
	if request.method == 'POST':
		fac_pub = FacManualPublications()
		fac_pub.fac_man_pub_gusid = request.user
		if 'manual_title' in request.POST:
			fac_pub.fac_man_pub_title = request.POST['manual_title']
		if 'manual_author' in request.POST:
			fac_pub.fac_man_pub_author = request.POST['manual_author']
		if 'manual_publishers' in request.POST:
			fac_pub.fac_man_pub_publisher = request.POST['manual_publishers']
		if 'manual_first_edition' in request.POST:
			fac_pub.fac_man_pub_fedition = request.POST['manual_first_edition']
		if 'manual_other_edition' in request.POST:
			fac_pub.fac_man_pub_oedition = request.POST['manual_other_edition']
		if 'manual' in request.POST:
			fac_pub.fac_man_pub_details = request.POST['manual']
		fac_pub.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_seminar_save(request):
	if request.method == 'POST':
		fac_seminar = FacSeminars()
		fac_seminar.fac_sem_gusid = request.user
		if 'seminars_conference_faculty' in request.POST:
			fac_seminar.fac_sem_facname = request.POST['seminars_conference_faculty']
		if 'seminars_conference_place' in request.POST:
			fac_seminar.fac_sem_name = request.POST['seminars_conference_place']
		if 'seminars_conference_date' in request.POST:
			fac_seminar.fac_sem_date = request.POST['seminars_conference_date']
		if 'seminars_conference_nature_participation' in request.POST:
			fac_seminar.fac_sem_nature = request.POST['seminars_conference_nature_participation']
		fac_seminar.save()
	return HttpResponse('details saved')

@csrf_exempt
def fac_soft_dev_save(request):
	if request.method == 'POST':
		fac_soft_dev = FacSoftwareDevelopment()
		fac_soft_dev.fac_soft_dev_gusid = request.user
		if 'software_project_name' in request.POST:
			fac_soft_dev.fac_soft_dev_name = request.POST['software_project_name']
		if 'software_student' in request.POST:
			fac_soft_dev.fac_soft_dev_student = request.POST['software_student']
		if 'software_staff' in request.POST:
			fac_soft_dev.fac_soft_dev_staff = request.POST['software_staff']
		fac_soft_dev.save()
	return HttpResponse('details saved')










