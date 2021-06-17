FROM debian:buster
EXPOSE 9000
RUN apt update
RUN apt-get install -y php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml
COPY latest.tar.gz /
RUN tar -xvf /latest.tar.gz
RUN mkdir -p  /var/www/html
RUN mv /wordpress/* /var/www/html
# COPY wp-config.php /wp-config.php
RUN chmod -R 777 /var/www/html
RUN mkdir -p /run/php 
# CMD php-fpm7.3 -F
 CMD tail -f /dev/null