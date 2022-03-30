#!/bin/sh
#python manage.py db revision --rev-id fdfcb039ddfc
python manage.py db migrate
python manage.py db upgrade
python manage.py run
