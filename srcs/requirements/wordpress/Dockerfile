FROM debian:buster
EXPOSE 9000
RUN apt update
RUN apt-get install -y vim php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml
COPY cnf/latest.tar.gz /
RUN tar -xvf /latest.tar.gz
RUN mkdir -p  /var/www/html
COPY cnf/wp-config.php /
COPY cnf/www.conf /etc/php/7.3/fpm/pool.d
COPY cnf/setup.sh /
RUN mkdir -p /run/php 
CMD sh /setup.sh