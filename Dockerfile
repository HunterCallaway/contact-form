FROM richarvey/nginx-php-fpm

WORKDIR /var/www/
RUN rm -rf *

COPY . /var/www/html
RUN mv public_html html

EXPOSE 80