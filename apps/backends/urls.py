from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView
from django.conf import settings
from apps.backends import views





urlpatterns = patterns('',
    # Examples:
	url(r'user_signup/$',views.user_signup, name='user_signup'),
	url(r'user_login/$',views.user_login, name='user_login'),
	url(r'user_logout/$',views.user_logout, name='user_logout'),

	url(r'candidate_activity/$',views.cand_activity, name='candidate_activity'),
	url(r'candidate_performance/$',views.cand_performance, name='candidate_performance'),
	url(r'candidate_nat_reg/$',views.cand_nat_recog, name='candidate_nat_reg'),
	url(r'candidate_initiatives/$',views.cand_initiatives, name='candidate_initiatives'),
	url(r'candidate_internship/$',views.cand_internship, name='candidate_internship'),
	url(r'candidate_journals/$',views.cand_journals, name='candidate_journals'),
	url(r'candidate_paper_conference/$',views.cand_paper_conference, name='candidate_paper_conference'),
	url(r'candidate_development/$',views.cand_development, name='candidate_development'),

	url(r'user_profile_search/$',views.user_details_search, name='user_profile_search'),
	url(r'foreign_profile/(\d+)$',views.foreign_profile_generation, name='foreign_profile'),

	# faculty details edit urls
	url(r'fac_natconf_edit/(\d+)$',views.fac_national_conferences_edit, name='fac_nat_conf_edit'),
	url(r'fac_intconf_edit/(\d+)$',views.fac_international_conferences_edit, name='fac_int_conf_edit'),
	url(r'fac_intjour_edit/(\d+)$',views.fac_international_journal_edit, name='fac_int_jour_edit'),
	url(r'fac_natjour_edit/(\d+)$',views.fac_national_journal_edit, name='fac_nat_jour_edit'),
	url(r'fac_consultancy_edit/(\d+)$',views.fac_consultancy_edit, name='fac_consultancy_edit'),
	url(r'fac_pub_edit/(\d+)$',views.fac_pub_edit, name='fac_pub_edit'),
	url(r'fac_seminar_edit/(\d+)$',views.fac_seminar_edit, name='fac_seminar_edit'),
	url(r'fac_soft_dev_edit/(\d+)$',views.fac_soft_dev_edit, name='fac_soft_dev_edit'),
	url(r'fac_awards_edit/(\d+)$',views.fac_awards_edit, name='fac_awards_edit'),

	# student edit urls
	url(r'student_activity_edit/(\d+)$',views.student_activity_edit, name='student_activity_edit'),
	url(r'student_performance_edit/(\d+)$',views.student_performance_edit, name='student_performance_edit'),
	url(r'student_natreg_edit/(\d+)$',views.student_natreg_edit, name='student_natreg_edit'),
	url(r'student_initiatives_edit/(\d+)$',views.student_initiatives_edit, name='student_initiatives_edit'),
	url(r'student_internship_edit/(\d+)$',views.student_internship_edit, name='student_internship_edit'),
	url(r'student_paper_present_edit/(\d+)$',views.student_paper_present_edit, name='student_paper_present_edit'),
	url(r'student_paper_publish_edit/(\d+)$',views.student_paper_publish_edit, name='student_paper_publish_edit'),
	url(r'student_software_dev_edit/(\d+)$',views.student_software_dev_edit, name='student_software_dev_edit'),

	# faculty delete profile urls
	url(r'fac_natconf_delete/(\d+)$',views.fac_natconf_delete, name='fac_natconf_delete'),
	url(r'fac_intconf_delete/(\d+)$',views.fac_intconf_delete, name='fac_intconf_delete'),
	url(r'fac_intjour_delete/(\d+)$',views.fac_intjour_delete, name='fac_intjour_delete'),
	url(r'fac_natjour_delete/(\d+)$',views.fac_natjour_delete, name='fac_natjour_delete'),
	url(r'fac_consultancy_delete/(\d+)$',views.fac_consultancy_delete, name='fac_consultancy_delete'),
	url(r'fac_pub_delete/(\d+)$',views.fac_pub_delete, name='fac_pub_delete'),
	url(r'fac_seminar_delete/(\d+)$',views.fac_seminar_delete, name='fac_seminar_delete'),
	url(r'fac_soft_dev_delete/(\d+)$',views.fac_soft_dev_delete, name='fac_soft_dev_delete'),
	url(r'fac_awards_delete/(\d+)$',views.fac_awards_delete, name='fac_awards_delete'),
	# student delete profile urls
	url(r'cand_activity_delete/(\d+)$',views.cand_activity_delete, name='cand_activity_delete'),
	url(r'cand_performance_delete/(\d+)$',views.cand_performance_delete, name='cand_performance_delete'),
	url(r'cand_nat_recog_delete/(\d+)$',views.cand_nat_recog_delete, name='cand_nat_recog_delete'),
	url(r'cand_initiatives_delete/(\d+)$',views.cand_initiatives_delete, name='cand_initiatives_delete'),
	url(r'cand_intern_delete/(\d+)$',views.cand_intern_delete, name='cand_intern_delete'),
	url(r'cand_paper_presented_delete/(\d+)$',views.cand_paper_presented_delete, name='cand_paper_presented_delete'),
	url(r'cand_paper_published_delete/(\d+)$',views.cand_paper_published_delete, name='cand_paper_published_delete'),
	url(r'cand_software_development_delete/(\d+)$',views.cand_software_development_delete, name='cand_software_development_delete'),

	# student urls
	url(r'cand_activity/$', views.candidate_activity, name='cand_activity'),
	url(r'cand_performance/$', views.candidate_performance, name='cand_performance'),
	url(r'cand_nat_recog/$', views.cand_national_recognition, name='cand_nat_recog'),
	url(r'cand_initiatives/$', views.candidate_initiatives, name='cand_initiatives'),
	url(r'cand_intern/$', views.cand_intern, name='cand_intern'),
	url(r'cand_paper_presented/$', views.cand_paper_presented, name='cand_paper_presented'),
	url(r'cand_paper_published/$', views.cand_paper_published, name='cand_paper_published'),
	url(r'cand_software_development/$', views.cand_software_development, name='cand_software_development'),

	# url for admin actions 
	url(r'admin_detail_search/$', views.admin_detail_search, name='admin_detail_search'),

	# url for minutes of meeting 
	url(r'minutes_meeting_admin/$', views.minutes_meeting_admin, name='minutes_meeting_admin'),
	url(r'minutes_meeting_view/$', views.minutes_meeting_view, name='minutes_meeting_view'),
	url(r'minutes_meeting_save/$', views.minutes_meeting_save, name='minutes_meeting_save'),
	url(r'minutes_meeting_edit/(\d+)$', views.minutes_meeting_edit, name='minutes_meeting_edit'),
	url(r'minutes_meeting_update/(\d+)$', views.minutes_meeting_update, name='minutes_meeting_update'),
	url(r'minutes_meeting_delete/(\d+)$', views.minutes_meeting_delete, name='minutes_meeting_delete'),


	# faculty urls
	url(r'fac_awards/$', views.fac_awards, name='fac_awards'),
	url(r'fac_consultancy/$', views.fac_consultancy, name='fac_consultancy'),
	url(r'fac_intconf/$', views.fac_intconf, name='fac_intconf'),
	url(r'fac_intjour/$', views.fac_intjour, name='fac_intjour'),
	url(r'fac_natconf/$', views.fac_natconf, name='fac_natconf'),
	url(r'fac_natjour/$', views.fac_natjour, name='fac_natjour'),
	url(r'fac_pub/$', views.fac_pub, name='fac_pub'),
	url(r'fac_seminar/$', views.fac_seminar, name='fac_seminar'),
	url(r'fac_soft_dev/$', views.fac_soft_dev, name='fac_soft_dev'),

	# faculty details saving urls
	url(r'fac_award_save/$',views.fac_awards_save, name='fac_awards_save'),
	url(r'fac_consultancy_save/$',views.fac_consact_save, name='fac_consultancy_save'),
	url(r'fac_int_conf_save/$',views.fac_intconf_save, name='fac_int_conf_save'),
	url(r'fac_intjour_save/$',views.fac_intjour_save, name='fac_intjour_save'),
	url(r'fac_natconf_save/$',views.fac_natconf_save, name='fac_natconf_save'),
	url(r'fac_natjour_save/$',views.fac_natjour_save, name='fac_natjour_save'),
	url(r'fac_pub_save/$',views.fac_pub_save, name='fac_pub_save'),
	url(r'fac_seminar_save/$',views.fac_seminar_save, name='fac_seminar_save'),
	url(r'fac_soft_dev_save/$',views.fac_soft_dev_save, name='fac_soft_dev_save'),


	# url(r'^blog/', include('blog.urls')),
	# url(r'^signup/$', views.signup, name="signup"),
	# url(r'signin/$', views.login_user, name="auth_login"),
	url(r'^$', views.home, name='home'),
	url(r'^dashboard/$', views.dashboard, name="dashboard"),
	url(r'^view_details/$', views.user_details, name="view_details"),



)
