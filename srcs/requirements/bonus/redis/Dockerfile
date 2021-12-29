FROM ynoam_debian

RUN apt-get install -y redis-server php-redis
RUN rm  /etc/redis/redis.conf
COPY cnf/redis.conf /etc/redis/

CMD redis-server
# service redis-server start