# https://hub.docker.com/_/postgres/
docker run -d -p 5432:5432 -e "POSTGRES_USER=docker-user" -e "POSTGRES_PASSWORD=123456" -e "POSTGRES_DB=docker-db" --name postgres postgres:latest

# docker exec -it postgres bash
# psql -d docker-db -U docker-user