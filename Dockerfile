FROM richarvey/nginx-php-fpm

RUN mv public_html site
COPY nginx.conf /etc/nginx/default.conf

WORKDIR /usr/share/nginx/html
RUN rm -rf *

COPY frontend /var/www/html

COPY composer.json /var/www
COPY composer.lock /var/www

WORKDIR /var/www
RUN composer install

EXPOSE 80