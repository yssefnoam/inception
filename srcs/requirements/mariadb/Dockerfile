FROM debian:buster
EXPOSE 3306
RUN apt update
RUN apt-get install -y mariadb-server procps
COPY cnf/* /
RUN mv /my.cnf /etc/mysql/mariadb.conf.d
CMD sh /setup.sh