FROM debian:buster
EXPOSE 443
EXPOSE 80
RUN apt update
RUN apt-get -y install nginx
RUN mkdir -p /var/www/html
RUN chmod -R 777 /var/www/html
COPY cnf/default.conf /etc/nginx/sites-available/default
COPY cnf/example.crt /
COPY cnf/example.key /
COPY index /var/www/html/index
RUN chmod 777 /var/www/html/*
# RUN mv /wordpress/* /var/www/html
# COPY cnf/wp-config.php /var/www/html
# RUN apt install -y php-fpm php-mysql
# CMD service php7.3-fpm start && nginx -g "daemon off;"
CMD nginx -g "daemon off;"