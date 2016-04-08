# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [app_label]'
# into your database.
from __future__ import unicode_literals

from django.db import models


class AuthGroup(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(unique=True, max_length=80)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    group = models.ForeignKey(AuthGroup)
    permission = models.ForeignKey('AuthPermission')

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'


class AuthPermission(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=50)
    content_type = models.ForeignKey('DjangoContentType')
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'


class AuthUser(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField()
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=30)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=75)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    group = models.ForeignKey(AuthGroup)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'


class AuthUserUserPermissions(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    user = models.ForeignKey(AuthUser)
    permission = models.ForeignKey(AuthPermission)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'


class CandidateAchievementsAwards(models.Model):
    ach_id = models.IntegerField(primary_key=True)
    ach_reg_no = models.ForeignKey('CandidateMaster', db_column='ach_reg_no', blank=True, null=True)
    ach_name = models.CharField(max_length=1000, blank=True)
    ach_date = models.DateTimeField(blank=True, null=True)
    ach_type = models.CharField(max_length=30, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_achievements_awards'


class CandidateConferences(models.Model):
    conf_id = models.IntegerField(primary_key=True)
    conf_can_reg_no = models.ForeignKey('CandidateMaster', db_column='conf_can_reg_no', blank=True, null=True)
    conf_name = models.CharField(max_length=1000, blank=True)
    conf_venue = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_conferences'


class CandidateMaster(models.Model):
    candidate_id = models.IntegerField(primary_key=True)
    candidate_name = models.CharField(max_length=100, blank=True)
    candidate_type = models.CharField(max_length=30, blank=True)
    candidate_year = models.CharField(max_length=30, blank=True)
    candidate_date = models.DateTimeField(blank=True, null=True)
    candidate_reg_number = models.CharField(unique=True, max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_master'


class CandidatePaperPublish(models.Model):
    paper_id = models.IntegerField(primary_key=True)
    paper_can_reg_no = models.ForeignKey(CandidateMaster, db_column='paper_can_reg_no', blank=True, null=True)
    paper_title = models.CharField(max_length=1000, blank=True)
    paper_first_author = models.CharField(max_length=100, blank=True)
    paper_other_author = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_paper_publish'


class CandidateResearch(models.Model):
    res_id = models.IntegerField(primary_key=True)
    res_reg_no = models.ForeignKey(CandidateMaster, db_column='res_reg_no', blank=True, null=True)
    res_name = models.CharField(max_length=1000, blank=True)
    res_date = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'candidate_research'


class DjangoAdminLog(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.IntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', blank=True, null=True)
    user = models.ForeignKey(AuthUser)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    name = models.CharField(max_length=100)
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'


class DjangoMigrations(models.Model):
    id = models.IntegerField(primary_key=True)  # AutoField?
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class EducationProfileMaster(models.Model):
    profile_id = models.IntegerField(primary_key=True)
    edu_reg_no = models.ForeignKey(CandidateMaster, db_column='edu_reg_no', blank=True, null=True)
    edu_courses = models.CharField(max_length=1000, blank=True)

    class Meta:
        managed = False
        db_table = 'education_profile_master'


class GlobalUsers(models.Model):
    gus_userid = models.IntegerField(primary_key=True)
    gus_username = models.CharField(max_length=100, blank=True)
    gus_name = models.CharField(max_length=100, blank=True)
    gus_password = models.CharField(max_length=100, blank=True)
    gus_lastlogin = models.DateTimeField(blank=True, null=True)
    gus_type = models.CharField(max_length=30, blank=True)
    gus_createdby = models.CharField(max_length=40, blank=True)
    gus_dob = models.DateTimeField(blank=True, null=True)
    gus_email = models.CharField(max_length=50, blank=True)
    gus_isused = models.IntegerField(blank=True, null=True)
    gus_modifiedon = models.DateTimeField(blank=True, null=True)
    gus_verify = models.CharField(max_length=10, blank=True)

    class Meta:
        managed = False
        db_table = 'global_users'
