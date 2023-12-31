# Generated by Django 3.1.7 on 2023-03-05 05:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('aboutPills', '0003_pills'),
    ]

    operations = [
        migrations.CreateModel(
            name='Member',
            fields=[
                ('uid', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=10)),
                ('pwd', models.CharField(max_length=16)),
            ],
            options={
                'db_table': 'member',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Zzim',
            fields=[
                ('uid', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=10)),
                ('seq', models.CharField(blank=True, max_length=30, null=True)),
                ('pill_name', models.CharField(blank=True, max_length=50, null=True)),
            ],
            options={
                'db_table': 'zzim',
                'managed': False,
            },
        ),
    ]
