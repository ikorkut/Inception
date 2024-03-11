all: data db wp up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d
data:
	mkdir /home/ikorkut/data
db:
	mkdir /home/ikorkut/data/db
wp:
	mkdir /home/ikorkut/data/wp

down:
	docker-compose -f ./srcs/docker-compose.yml down

.PHONY: up data db wp down
