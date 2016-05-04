FROM 1maa/php:7.0

COPY silex.sta /var/www/silex.sta
RUN chown -R www-data:www-data /var/www

USER www-data
WORKDIR /var/www/silex.sta

RUN composer install --no-dev --optimize-autoloader

USER root
