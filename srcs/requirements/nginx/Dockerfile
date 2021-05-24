FROM alpine:3.12.1
EXPOSE 443
RUN apk update
RUN apk add openrc
RUN rc-status
RUN touch /run/openrc/softlevel
RUN apk add nginx
RUN mkdir -p /var/www/ynoam.42.fr
COPY cnf/default.conf /
COPY cnf/example.crt /
COPY cnf/example.key /
COPY cnf/run.sh /
CMD sh /run.sh