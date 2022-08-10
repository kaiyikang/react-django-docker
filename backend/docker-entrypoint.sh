#!/bin/bash

# 初始化 Django的内容
# 并 运行 uwsgi --ini
python manage.py collectstatic --noinput &&
python manage.py makemigrations &&
python manage.py migrate &&
uwsgi --ini /backend/uwsgi.ini &&
tail -f /dev/null

exec "$@"