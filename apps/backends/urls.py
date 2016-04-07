from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView
from django.conf import settings
from apps.backends import views





urlpatterns = patterns('',
    # Examples:
    url(r'personal_details/$',views.personal_details, name='personal_details'),
    # url(r'^blog/', include('blog.urls')),
     # url(r'^signup/$', views.signup, name="signup"),
     # url(r'signin/$', views.login_user, name="auth_login"),
     url(r'^$', TemplateView.as_view(template_name='index.html')),
    
)
