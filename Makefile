COMPOSE=docker-compose -f "srcs/docker-compose.yml"
build:
	$(COMPOSE) up -d --build
start:
	$(COMPOSE) start
stop:
	$(COMPOSE) stop
