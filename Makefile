setup:
	docker-compose up -d --build
	echo "please make migrate"

up:
	docker-compose up

refresh-data:
	docker-compose down
	docker volume rm actix_web_playground_backend_db-store
	docker volume rm actix_web_playground_backend_target
	make setup

migrate:
	docker-compose run --rm app diesel migration run

migrate-redo:
	docker-compose run --rm app diesel migration redo

test:
	docker-compose exec app cargo test