FROM debian:buster
RUN apt update
RUN apt install -y php7.3-fpm php7.3-mysql
COPY latest.tar.gz /
RUN tar -xvf /latest.tar.gz
COPY wp-config.php /wordpress/wp-config.php
COPY www.conf /etc/php7/php-fpm.d/www.conf
RUN chmod -R 777 /wordpress
RUN mkdir -p /run/php 
CMD php-fpm7.3 -F