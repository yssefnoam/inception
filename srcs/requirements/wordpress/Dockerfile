FROM ynoam_debian

RUN apt-get install -y php-fpm php-gd php-mysql php-cli \
	php-common php-curl php-opcache php-json php-imap php-mbstring php-xml \
	wget mariadb-client
COPY cnf/latest.tar.gz /
RUN tar -xvf /latest.tar.gz
RUN mkdir -p  /var/www/html
COPY cnf/www.conf /etc/php/7.3/fpm/pool.d
COPY cnf/setup.sh /
RUN mkdir -p /run/php 
COPY cnf/wp /
RUN chmod +x /wp
CMD sh /setup.sh