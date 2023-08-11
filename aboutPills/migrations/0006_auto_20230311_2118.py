# Generated by Django 3.1.7 on 2023-03-11 12:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('aboutPills', '0005_like'),
    ]

    operations = [
        migrations.CreateModel(
            name='Likes',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('uid', models.CharField(max_length=20)),
                ('pills_id', models.IntegerField()),
            ],
            options={
                'db_table': 'likes',
                'managed': False,
            },
        ),
        migrations.DeleteModel(
            name='Like',
        ),
    ]