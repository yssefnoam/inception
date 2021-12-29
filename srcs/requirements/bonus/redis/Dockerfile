FROM debian:buster
RUN apt update
# EXPOSE 3000
EXPOSE 6379
RUN apt-get install -y vim redis-server php-redis
RUN rm  /etc/redis/redis.conf
COPY cnf/redis.conf /etc/redis/

CMD redis-server
# service redis-server start