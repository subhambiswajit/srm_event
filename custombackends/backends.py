from django.contrib.auth.models import check_password
from django.contrib.auth.models import User
from django.core.exceptions import ObjectDoesNotExist
from apps.backends.models import GlobalUsers

class SrmEventBackend:
    """ When try to authenticating the student should pass contest id too """
    # Create an authentication method
    # This is called by the standard Django login procedure
    def authenticate(self, username=None, password=None):
        try:
            # Try to find a user matching your username
            print 'inside authenticate'
            user = GlobalUsers.objects.get(gus_username=username, gus_isused=0)
            print ">>>>>>>>>>>>>>>"
            print user.gus_email
            print user.gus_password
            #  Check the password is the reverse of the username
            if check_password(password, user.gus_password):
            #     # Yes? return the Django user object
                return user
            else:
            #     # No? return None - triggers default login
                print 'userid/password does not match'
                raise GlobalUsers.DoesNotExist
                # return None
        except GlobalUsers.DoesNotExist:
          
            return None

    # Required for your backend to work properly - unchanged in most scenarios
    def get_user(self, user_id):
        try:
            return GlobalUsers.objects.get(gus_userid=user_id)
        except GlobalUsers.DoesNotExist:
            return None