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
    def is_authenticated(user):
        return True
    def is_active(self):
        return True
    def is_staff(self):
        return True

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

class FacAwards(models.Model):
    fac_awards_id = models.IntegerField(primary_key=True)
    fac_awards_gusid = models.ForeignKey('GlobalUsers', db_column='fac_awards_gusid', blank=True, null=True)
    fac_awards_name = models.CharField(max_length=100, blank=True)
    fac_awards_details = models.TextField(blank=True)

    class Meta:
        managed = False
        db_table = 'fac_awards'


class FacConsultancyActivities(models.Model):
    fac_con_act_id = models.IntegerField(primary_key=True)
    fac_con_act_gusid = models.ForeignKey('GlobalUsers', db_column='fac_con_act_gusid', blank=True, null=True)
    fac_con_act_nature = models.TextField(blank=True)
    fac_con_act_client = models.CharField(max_length=100, blank=True)
    fac_con_act_dept = models.CharField(max_length=1000, blank=True)
    fac_con_act_revenue = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_consultancy_activities'


class FacInternationalConference(models.Model):
    fac_int_conf_id = models.IntegerField(primary_key=True)
    fac_int_conf_gusid = models.ForeignKey('GlobalUsers', db_column='fac_int_conf_gusid', blank=True, null=True)
    fac_int_conf_title = models.CharField(max_length=100, blank=True)
    fac_int_conf_author = models.CharField(max_length=100, blank=True)
    fac_int_conf_name = models.CharField(max_length=100, blank=True)
    fac_int_conf_journame = models.CharField(max_length=100, blank=True)
    fac_int_conf_date = models.DateTimeField(blank=True, null=True)
    fac_int_conf_venue = models.CharField(max_length=100, blank=True)
    fac_int_conf_status = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_international_conference'


class FacInternatonalJournals(models.Model):
    fac_int_jour_id = models.IntegerField(primary_key=True)
    fac_int_jour_gusid = models.ForeignKey('GlobalUsers', db_column='fac_int_jour_gusid', blank=True, null=True)
    fac_int_jour_title = models.CharField(max_length=100, blank=True)
    fac_int_jour_author = models.CharField(max_length=100, blank=True)
    fac_int_jour_oauthor = models.CharField(max_length=100, blank=True)
    fac_int_jour_name = models.CharField(max_length=100, blank=True)
    fac_int_jour_date = models.DateTimeField(blank=True, null=True)
    fac_int_jour_vol = models.CharField(max_length=100, blank=True)
    fac_int_jour_impact = models.CharField(max_length=100, blank=True)
    fac_int_jour_citation = models.CharField(max_length=100, blank=True)
    fac_int_jour_status = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_internatonal_journals'


class FacManualPublications(models.Model):
    fac_man_pub_id = models.IntegerField(primary_key=True)
    fac_man_pub_gusid = models.ForeignKey('GlobalUsers', db_column='fac_man_pub_gusid', blank=True, null=True)
    fac_man_pub_title = models.CharField(max_length=100, blank=True)
    fac_man_pub_author = models.CharField(max_length=100, blank=True)
    fac_man_pub_publisher = models.CharField(max_length=100, blank=True)
    fac_man_pub_fedition = models.CharField(max_length=100, blank=True)
    fac_man_pub_oedition = models.CharField(max_length=100, blank=True)
    fac_man_pub_details = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_manual_publications'


class FacNationalConference(models.Model):
    fac_nat_conf_id = models.IntegerField(primary_key=True)
    fac_nat_conf_gusid = models.ForeignKey('GlobalUsers', db_column='fac_nat_conf_gusid', blank=True, null=True)
    fac_nat_conf_title = models.CharField(max_length=50, blank=True)
    fac_nat_conf_author = models.CharField(max_length=100, blank=True)
    fac_nat_conf_name = models.CharField(max_length=100, blank=True)
    fac_nat_conf_journame = models.CharField(max_length=100, blank=True)
    fac_nat_conf_date = models.DateTimeField(blank=True, null=True)
    fac_nat_conf_venue = models.CharField(max_length=100, blank=True)
    fac_nat_conf_status = models.CharField(max_length=30, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_national_conference'


class FacNationalJournals(models.Model):
    fac_nat_jour_id = models.IntegerField(primary_key=True)
    fac_nat_jour_gusid = models.ForeignKey('GlobalUsers', db_column='fac_nat_jour_gusid', blank=True, null=True)
    fac_nat_jour_title = models.CharField(max_length=100, blank=True)
    fac_nat_jour_author = models.CharField(max_length=100, blank=True)
    fac_nat_jour_oauthor = models.CharField(max_length=100, blank=True)
    fac_nat_jour_name = models.CharField(max_length=100, blank=True)
    fac_nat_jour_date = models.DateTimeField(blank=True, null=True)
    fac_nat_jour_volume = models.CharField(max_length=100, blank=True)
    fac_nat_jour_impact = models.CharField(max_length=100, blank=True)
    fac_nat_jour_citation = models.CharField(max_length=100, blank=True)
    fac_nat_jour_status = models.CharField(max_length=100, blank=True)

    class Meta:
        managed = False
        db_table = 'fac_national_journals'


class FacSeminars(models.Model):
    fac_sem_id = models.IntegerField(primary_key=True)
    fac_sem_gusid = models.ForeignKey('GlobalUsers', db_column='fac_sem_gusid', blank=True, null=True)
    fac_sem_facname = models.CharField(max_length=100, blank=True)
    fac_sem_name = models.CharField(max_length=100, blank=True)
    fac_sem_date = models.DateTimeField(blank=True, null=True)
    fac_sem_nature = models.TextField(blank=True)

    class Meta:
        managed = False
        db_table = 'fac_seminars'


class FacSoftwareDevelopment(models.Model):
    fac_soft_dev_id = models.IntegerField(primary_key=True)
    fac_soft_dev_name = models.CharField(max_length=100, blank=True)
    fac_soft_dev_staff = models.CharField(max_length=100, blank=True)
    fac_soft_dev_student = models.CharField(max_length=100, blank=True)
    fac_soft_dev_gusid = models.ForeignKey('GlobalUsers', db_column='fac_soft_dev_gusid', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'fac_software_development'


