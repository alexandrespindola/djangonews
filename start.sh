#!/bin/bash
# Compilar Sass
sass --no-source-map app/static/app/assets/css/main.scss:app/static/app/assets/css/main.css

# Compilar Tailwind
npm run build:css
npm run build:custom

# Combinar arquivos CSS
cat app/static/app/assets/css/main.css app/static/app/assets/css/tailwind.css app/static/app/assets/css/custom/custom.output.css | postcss -o app/static/app/assets/css/style.css

# Coletar arquivos estáticos
python3 manage.py collectstatic --noinput

# Iniciar o servidor de desenvolvimento
python3 manage.py runserver

# while true; do
#     npm run build:css
#     python3 manage.py collectstatic --noinput
#     timeout 10 python3 manage.py runserver
# done