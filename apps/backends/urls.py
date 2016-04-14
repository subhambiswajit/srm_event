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

	# faculty urls
	url(r'fac_awards/$', views.fac_awards, name='fac_awards'),
	url(r'fac_consultancy/$', views.fac_consultancy, name='fac_consultancy'),
	url(r'fac_intconf/$', views.fac_intconf, name='fac_intconf'),
	url(r'fac_intjour/$', views.fac_intjour, name='fac_intjour'),
	url(r'fac_natconf/$', views.fac_natconf, name='fac_natconf'),
	url(r'fac_natjour/$', views.fac_natjour, name='fac_natjour'),
	url(r'fac_pub/$', views.fac_pub, name='fac_pub'),
	(r'^fac_seminars/$', TemplateView.as_view(template_name='faculty/fac_seminars.html')),
	(r'^fac_software_development/$', TemplateView.as_view(template_name='faculty/fac_software_development.html')),

	# faculty details saving urls
	url(r'fac_award_save/$',views.fac_awards_save, name='fac_awards_save'),
	url(r'fac_consultancy_save/$',views.fac_consact_save, name='fac_consultancy_save'),
	url(r'fac_int_conf_save/$',views.fac_intconf_save, name='fac_int_conf_save'),
	url(r'fac_intjour_save/$',views.fac_intjour_save, name='fac_intjour_save'),
	url(r'fac_natconf_save/$',views.fac_natconf_save, name='fac_natconf_save'),
	url(r'fac_natjour_save/$',views.fac_natjour_save, name='fac_natjour_save'),
	url(r'fac_pub_save/$',views.fac_pub_save, name='fac_pub_save'),


	# url(r'^blog/', include('blog.urls')),
	# url(r'^signup/$', views.signup, name="signup"),
	# url(r'signin/$', views.login_user, name="auth_login"),
	url(r'^$', views.home, name='home'),
	url(r'^dashboard/$', views.dashboard, name="dashboard"),
	url(r'^view_details/$', views.user_details, name="view_details"),



)
