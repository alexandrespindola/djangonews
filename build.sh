#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
npm run build:css
python3 manage.py collectstatic --noinput
python manage.py migrate