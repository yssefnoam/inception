FROM ynoam_debian

RUN apt-get -y install nginx
RUN mkdir -p /var/www/html
COPY cnf/default.conf /etc/nginx/sites-available/default
COPY cnf/index.html /var/www/html
COPY cnf/style.css /var/www/html
CMD  nginx -g "daemon off;"