NET = graphql_default
DB_HOST = db
DB_NAME = mysql-db
DB_PORT = 3306
DB_USER = root
DB_PASS = password

initgqlgen:
	cd graphql && go run github.com/99designs/gqlgen generate
newsql:
	docker run --rm --name newsql -v ${PWD}/mysql/sql:/sql \
	migrate/migrate create -ext sql -dir ./sql ${NAME}
migrate:
	docker run --rm --name migrate --net ${NET} \
	-v ${PWD}/mysql/sql:/sql migrate/migrate:latest \
	-path /sql/ -database "mysql://${DB_USER}:${DB_PASS}@tcp(${DB_HOST}:${DB_PORT})/$(DB_NAME)" ${MIGRATE}