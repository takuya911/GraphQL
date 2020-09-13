NET = mcrsvc_backend_default
DB_HOST = db
DB_NAME = mysql-db
DB_PORT = 3306
DB_USER = root
DB_PASS = password

initgqlgen:
	cd graphql && go run github.com/99designs/gqlgen generate
