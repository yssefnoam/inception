FROM debian:buster
EXPOSE 3306
RUN apt update
RUN apt-get install -y mariadb-server
COPY cnf/mariadb-server.cnf /etc/mysql/conf.d
RUN service mysql start && \
    mysql -e "create database wordpress;" && \
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';"
CMD ["mysqld_safe"]