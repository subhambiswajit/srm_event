from django.db import models

# Create your models here.


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
    candidate_name = models.CharField(max_length=100)
    candidate_type = models.CharField(max_length=30)
    candidate_year = models.CharField(max_length=30)
    candidate_date = models.DateTimeField()
    candidate_reg_number = models.CharField(unique=True, max_length=100)

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
class EducationProfileMaster(models.Model):
    profile_id = models.IntegerField(primary_key=True)
    edu_reg_no = models.ForeignKey(CandidateMaster, db_column='edu_reg_no', blank=True, null=True)
    edu_courses = models.CharField(max_length=1000, blank=True)

    class Meta:
        managed = False
        db_table = 'education_profile_master'
