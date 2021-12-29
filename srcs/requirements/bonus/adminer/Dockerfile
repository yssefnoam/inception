FROM debian:buster
RUN apt update
RUN apt-get install -y vim php-fpm php-mysql  wget
RUN wget https://www.adminer.org/latest.php && mv latest.php index.php
CMD php -S 0.0.0.0:5000 /index.php  