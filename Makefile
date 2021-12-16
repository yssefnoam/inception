all:
	docker-machine create default
	eval $(docker-machine env default)
	cd srcs
	docker-compose build
	docker-compose up -d
	docker cp