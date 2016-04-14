# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('backends', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='FacAwards',
            fields=[
            ],
            options={
                'db_table': 'fac_awards',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacConsultancyActivities',
            fields=[
            ],
            options={
                'db_table': 'fac_consultancy_activities',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacInternationalConference',
            fields=[
            ],
            options={
                'db_table': 'fac_international_conference',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacInternatonalJournals',
            fields=[
            ],
            options={
                'db_table': 'fac_internatonal_journals',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacManualPublications',
            fields=[
            ],
            options={
                'db_table': 'fac_manual_publications',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacNationalConference',
            fields=[
            ],
            options={
                'db_table': 'fac_national_conference',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacNationalJournals',
            fields=[
            ],
            options={
                'db_table': 'fac_national_journals',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacSeminars',
            fields=[
            ],
            options={
                'db_table': 'fac_seminars',
                'managed': False,
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='FacSoftwareDevelopment',
            fields=[
            ],
            options={
                'db_table': 'fac_software_development',
                'managed': False,
            },
            bases=(models.Model,),
        ),
    ]
