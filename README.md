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