# 1. Introduction
Step-by-step create the structure of react-django-docker project.

# 2. Steps
## 2.1 django + postgres
follows: https://docs.docker.com/samples/django/

## 2.2 React in docker
follows: https://mherman.org/blog/dockerizing-a-react-app/

Q: How to solve .cache permission denies?
A: 
~~~
RUN npm install \
    && mkdir -p ./node_modules/.cache \
    && chmod -R 777 ./node_modules/.cache
~~~

## 2.3 Django and uWSGI

Q: I have an error:
~~~
2022/08/10 15:53:08 [error] 21#21: *3 connect() failed (111: Connection refused) while connecting to upstream, client: xxxxxxxxx, server: xxxxxxxx, request: "GET / HTTP/1.1", upstream: "uwsgi://xxxxxxx", host: "xxxxxxxx"
~~~
A: This is not the error from Nginx, please check the config of uWSGI.

Q: About the comment in uwsgi.ini?
A: the comment must not follow the config. It will have error.

Q: 什么事uwsgi的正常反应？
A: 如果uwsgi不打印任何信息，说明配置出错，需要修改

Q: module=%(project).wsgi:application
A: project应该是django的顶级项目名字，而不是根目录文件夹的名字，否则会出现：internal server error，更加详细的可以参考：https://docs.djangoproject.com/zh-hans/4.1/howto/deployment/wsgi/uwsgi/