# DOCKER
build-docker:
	docker-compose build

run-docker:
	docker-compose up -d

cli-run-docker:
	docker-compose run cli

ps-docker:
	docker ps

stop-docker:
	docker kill $(docker ps -q)