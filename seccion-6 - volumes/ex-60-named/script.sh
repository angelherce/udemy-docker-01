docker volume create mysql-data

docker run \
    -d \
    -p3306:3306 \
    -v mysql-data:/var/lib/mysql \
    --name mysql \
    -e "MYSQL_ROOT_PASSWORD=123456" \
    -e "MYSQL_DATABASE=docker-db" \
    -e "MYSQL_USER=docker-user" \
    -e "MYSQL_PASSWORD=123456" \
    mysql:5.7