pip install --upgrade pip

pip install django && psycopg2 && uWSGI

pip freeze > requirements.txt

Write docker-compose.yml and ./backend/Dockerfile (https://docs.docker.com/samples/django/)


Create a new project in django
~~~bash
sudo docker-compose run web django-admin startproject composeexample .
~~~

