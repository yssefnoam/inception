FROM alpine:3.12.1
EXPOSE 3306
RUN apk update
RUN apk add openrc
RUN apk add mysql mysql-client
RUN rc-status
RUN touch /run/openrc/softlevel
RUN /etc/init.d/mariadb setup
COPY cnf/mariadb-server.cnf /etc/my.cnf.d/
COPY cnf/run.sh /
RUN sh /run.sh
CMD ["mysqld_safe"]