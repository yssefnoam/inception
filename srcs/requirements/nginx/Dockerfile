FROM ynoam_debian

RUN apt-get -y install nginx
RUN mkdir -p /var/www/html
COPY cnf/default.conf /etc/nginx/sites-available/default
COPY cnf/example.crt /
COPY cnf/example.key /
CMD  nginx -g "daemon off;"