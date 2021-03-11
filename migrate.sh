#!/usr/bin/bash

source venv/bin/activate

python manage.py migrate backend zero
python manage.py makemigrations
python manage.py migrate