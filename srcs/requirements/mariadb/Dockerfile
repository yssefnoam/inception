FROM debian:buster
EXPOSE 3306
RUN apt update
RUN apt-get install -y mariadb-server
COPY cnf/* /
RUN mv /my.cnf /etc/mysql/mariadb.conf.d
# CMD sh /setup.sh
CMD tail -f /dev/null
# RUN apt-get update \
#  && DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server \
#  && sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/mysql.conf.d/mysqld.cnf \
#  && mkdir /var/run/mysqld \
#  && chown -R mysql:mysql /var/run/mysqld

# VOLUME ["/var/lib/mysql"]

# EXPOSE 3306

# CMD ["mysqld_safe"]