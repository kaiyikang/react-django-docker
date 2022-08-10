# The initial Virtual Machine provides the version of python is 3.8.10, so here I use 3.8-alpine
FROM python:3.9

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /backend
# apk add python3-dev build-base linux-headers pcre-dev
RUN  pip install --upgrade pip \
    && pip install --no-cache-dir django psycopg2-binary \
    && pip install uwsgi \
    && pip install django-cors-headers

COPY . /backend/

# 修改 入口脚本的权限
RUN chmod +x ./docker-entrypoint.sh

# 执行 入口脚本
ENTRYPOINT [ "/bin/sh", "./docker-entrypoint.sh" ]