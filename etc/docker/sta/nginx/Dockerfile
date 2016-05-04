FROM nginx:1.10

COPY conf.d/default.conf /etc/nginx/conf.d/default.conf
COPY silex.sta /var/www/silex.sta

RUN chown -R nginx:nginx /var/www
