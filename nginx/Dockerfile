FROM nginx:latest

# 删除原有配置文件，并创建静态资源文件夹和ssl证书文件夹
# Meida 文件夹的 用户和用户组 应该是www-data，并有wrx权限
RUN rm /etc/nginx/conf.d/default.conf \ 
    && mkdir -p /nginx/html/static \ 
    && mkdir -p /nginx/html/media \ 
    && mkdir -p /nginx/ssl \
    && chown -R www-data:www-data /nginx/html/media \
    && chmod -R 775 /nginx/html/media

# 添加配置文件
COPY ./nginx.conf /etc/nginx/conf.d/

# 关闭守护模式，防止container退出
CMD ["nginx", "-g", "daemon off;"]