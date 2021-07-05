FROM debian:buster
EXPOSE 3306
RUN apt update
RUN apt-get install -y mariadb-server mariadb-client vim
COPY cnf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY cnf/wordpress.sql /
RUN service mysql start && \
    mysql -e "create database wordpress;" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';" && \
    mysql wordpress < /wordpress.sql
CMD ["mysqld_safe"]