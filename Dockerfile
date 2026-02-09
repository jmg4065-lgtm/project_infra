# FROM nginx:alpine
# COPY index.html /usr/share/nginx/html/index.html
# EXPOSE 80

FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

WORKDIR /var/www/html
COPY app/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html

EXPOSE 80

