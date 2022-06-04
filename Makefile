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

# Create a test user from the user service
test-user:
	docker-compose run user-cli \
	--name="Max Git" \
	--email="max@git.com" \
	--password="Testing123" \
	--company="Test Company"


pg-start:
	docker-compose up -d database

user-start:
	docker-compose up -d user