# Generated by Django 3.1.7 on 2023-02-21 08:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('aboutPills', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Solution',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('solution', models.CharField(max_length=150)),
            ],
        ),
    ]