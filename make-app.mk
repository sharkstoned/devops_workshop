USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-setup: app-build
	docker-compose run --user=$(USER) app bin/setup

app-build:
	docker-compose build

app-bash:
	docker-compose run --user=$(USER) app bash
