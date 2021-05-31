FROM alpine:3.12.1
EXPOSE 3306
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
COPY cnf/mariadb-server.cnf /etc/my.cnf.d/
RUN service mariadb start
RUN mysql -e "create database wordpress;"
RUN mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'ynoam'@'%' IDENTIFIED BY 'ynoam';"
CMD ["mysqld_safe"]