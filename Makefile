all:
	docker-machine create default
	eval $(docker-machine env default)
	docker-compose build -f srcs/docker-compose.yml
	docker-compose up -d