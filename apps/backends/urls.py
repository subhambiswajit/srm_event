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

	# student urls
	url(r'cand_activity/$', views.cand_activity, name='cand_activity'),
	url(r'cand_performance/$', views.cand_performance, name='cand_performance'),

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
