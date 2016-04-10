# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CandidateActivity',
            fields=[
            ],
            options={
                'db_table': 'candidate_activity',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidateDevelopment',
            fields=[
            ],
            options={
                'db_table': 'candidate_development',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidateInitiatives',
            fields=[
            ],
            options={
                'db_table': 'candidate_initiatives',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidateInternship',
            fields=[
            ],
            options={
                'db_table': 'candidate_internship',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidateJournals',
            fields=[
            ],
            options={
                'db_table': 'candidate_journals',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidateNationalRecognition',
            fields=[
            ],
            options={
                'db_table': 'candidate_national_recognition',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidatePaperConference',
            fields=[
            ],
            options={
                'db_table': 'candidate_paper_conference',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CandidatePerformance',
            fields=[
            ],
            options={
                'db_table': 'candidate_performance',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='GlobalUsers',
            fields=[
            ],
            options={
                'db_table': 'global_users',
                'managed': False,
            },
            bases=(models.Model,),
        ),
    ]
