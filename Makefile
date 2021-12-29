COMPOSE=docker-compose -f "srcs/docker-compose.yml"
build:
	$(COMPOSE) up -d --build
start:
	$(COMPOSE) start
stop:
	$(COMPOSE) stop
	2146f75c4beb86bc8af1dd4b663098419d18d292
