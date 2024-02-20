#!/bin/bash
# Compilar Sass
sass --no-source-map app/static/app/assets/css/main.scss:app/static/app/assets/css/main.css

# Compilar Tailwind
npm run build:css

# Combinar arquivos CSS
cat app/static/app/assets/css/main.css app/static/app/assets/css/tailwind.css | postcss -o app/static/app/assets/css/style.css

# Coletar arquivos estáticos
python manage.py collectstatic --noinput

# Iniciar o servidor de desenvolvimento
python manage.py runserver

# while true; do
#     npm run build:css
#     python3 manage.py collectstatic --noinput
#     timeout 10 python3 manage.py runserver
# done