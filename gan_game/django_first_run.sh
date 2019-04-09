#!/bin/bash

rm drf_pipeline/migrations/*
rm db.sqlite3
rm -rf media/job_*
python manage.py migrate auth
python manage.py makemigrations game
python manage.py migrate
echo "from django.contrib.auth import get_user_model; User = get_user_model(); User.objects.create_superuser('admin', '', 'admin')" | python manage.py shell
