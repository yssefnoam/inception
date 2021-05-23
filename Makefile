all:
	docker-machine create default
	eval $(docker-machine env default)
	docker network create mynetwork
	docker-compose build -f srcs/docker-compose.yml
	docker-compose up -d