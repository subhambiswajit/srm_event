from django.db import models

# Create your models here.


class GlobalUsers(models.Model):
    gus_userid = models.IntegerField(primary_key=True)
    gus_username = models.CharField(max_length=100, blank=True)
    gus_name = models.CharField(max_length=100, blank=True)
    gus_password = models.CharField(max_length=100, blank=True)
    last_login = models.DateTimeField(db_column='gus_lastlogin', blank=True, null=True)
    gus_type = models.CharField(max_length=30, blank=True)
    gus_createdby = models.CharField(max_length=40, blank=True, null=True)
    gus_dob = models.DateTimeField(blank=True, null=True)
    gus_email = models.CharField(max_length=50, blank=True, null=True)
    gus_isused = models.IntegerField(blank=True, null=True)
    gus_modifiedon = models.DateTimeField(blank=True, null=True)
    gus_verify = models.CharField(max_length=10, blank=True)

    class Meta:
        managed = False
        db_table = 'global_users'

class CandidateActivity(models.Model):
    candidate_id = models.IntegerField(primary_key=True)
    cand_act_name = models.TextField(blank=True)
    cand_act_gusid = models.ForeignKey('GlobalUsers', db_column='cand_act_gusid', blank=True, null=True)
    cand_act_date = models.DateTimeField(blank=True, null=True)
    cand_act_prize = models.TextField(blank=True)
    cand_act_nature = models.TextField(blank=True)
    cand_act_year = models.CharField(max_length=100, blank=True)
    class Meta:
        managed = False
        db_table = 'candidate_activity'

class CandidatePerformance(models.Model):
    cand_per_id = models.IntegerField(primary_key=True)
    cand_per_gusid = models.ForeignKey('GlobalUsers', db_column='cand_per_gusid', blank=True, null=True)
    cand_per_exam = models.CharField(max_length=100, blank=True)
    cand_per_ypass = models.CharField(max_length=30, blank=True)
    cand_per_marks = models.CharField(max_length=30, blank=True)
    cand_per_year = models.CharField(max_length=30, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_performance'

class CandidateNationalRecognition(models.Model):
    cand_nat_reg_id = models.IntegerField(primary_key=True)
    cand_nat_reg_gus = models.ForeignKey('GlobalUsers', db_column='cand_nat_reg_gus_id', blank=True, null=True)
    cand_nat_reg_details = models.TextField(blank=True)
    cand_nat_reg_year = models.CharField(max_length=30, blank=True)
    cand_nat_reg_isused = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'candidate_national_recognition'

class CandidateInitiatives(models.Model):
    cand_ini_id = models.IntegerField(primary_key=True)
    cand_ini_gusid = models.ForeignKey('GlobalUsers', db_column='cand_ini_gusid', blank=True, null=True)
    cand_ini_level = models.CharField(max_length=100, blank=True)
    cand_ini_name = models.CharField(max_length=100, blank=True)
    cand_ini_venue = models.CharField(max_length=100, blank=True)
    cand_ini_date = models.DateTimeField(blank=True, null=True)
    cand_ini_isused = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'candidate_initiatives'

class CandidateInternship(models.Model):
    cand_int_id = models.IntegerField(primary_key=True)
    cand_int_gusid = models.ForeignKey('GlobalUsers', db_column='cand_int_gusid', blank=True, null=True)
    cand_int_name = models.CharField(max_length=100, blank=True)
    cand_int_start = models.DateTimeField()
    cand_int_end = models.DateTimeField()
    cand_int_stipend = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'candidate_internship'


class CandidateJournals(models.Model):
    cand_jour_id = models.IntegerField(primary_key=True)
    cand_jour_gusid = models.ForeignKey('GlobalUsers', db_column='cand_jour_gusid', blank=True, null=True)
    cand_jour_title = models.CharField(max_length=500, blank=True)
    cand_jour_fauthor = models.CharField(max_length=100, blank=True)
    cand_jour_oauthor = models.CharField(max_length=500, blank=True)
    cand_jour_name = models.CharField(max_length=100, blank=True)
    cand_jour_date = models.DateTimeField(blank=True, null=True)
    cand_jour_vol = models.CharField(max_length=100, blank=True)
    cand_jour_impact = models.CharField(max_length=100, blank=True)
    cand_jour_citation = models.CharField(max_length=100, blank=True)
    cand_jour_indexed = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_journals'

class CandidatePaperConference(models.Model):
    cand_pap_conf_id = models.IntegerField(primary_key=True)
    cand_pap_conf_gusid = models.ForeignKey('GlobalUsers', db_column='cand_pap_conf_gusid', blank=True, null=True)
    cand_pap_conf_title = models.CharField(max_length=100, blank=True)
    cand_pap_conf_author = models.CharField(max_length=100, blank=True)
    cand_pap_conf_cname = models.CharField(max_length=100, blank=True)
    cand_pap_conf_date = models.DateTimeField(blank=True, null=True)
    cand_pap_conf_duration = models.CharField(max_length=50, blank=True)
    cand_pap_conf_org = models.CharField(max_length=100, blank=True)
    cand_pap_conf_venue = models.CharField(max_length=50, blank=True)
    cand_pap_conf_status = models.CharField(max_length=50, blank=True)

    class Meta:
        managed = False
        db_table = 'candidate_paper_conference'

class CandidateDevelopment(models.Model):
    cand_dev_id = models.IntegerField(primary_key=True)
    cand_dev_gusid = models.ForeignKey('GlobalUsers', db_column='cand_dev_gusid', blank=True, null=True)
    cand_dev_name = models.TextField()
    cand_dev_faculty = models.TextField()

    class Meta:
        managed = False
        db_table = 'candidate_development'


