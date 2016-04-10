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


	# url(r'^blog/', include('blog.urls')),
	# url(r'^signup/$', views.signup, name="signup"),
	# url(r'signin/$', views.login_user, name="auth_login"),
	url(r'^$', views.home, name='home'),
	url(r'^dashboard/$', views.dashboard, name="dashboard"),
	url(r'^view_details/$', views.user_details, name="view_details"),



)
