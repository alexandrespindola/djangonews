#!/bin/bash

npm run build:css
python3 manage.py collectstatic --noinput
python3 manage.py runserver

# while true; do
#     npm run build:css
#     python3 manage.py collectstatic --noinput
#     timeout 10 python3 manage.py runserver
# done