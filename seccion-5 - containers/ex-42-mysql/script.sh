# https://hub.docker.com/_/mysql
docker run -d -p3306:3306 --name mysql-1 -e "MYSQL_ROOT_PASSWORD=123456" -e "MYSQL_DATABASE=docker" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=123456" mysql:5.7

# docker run -d -p3333:3306 --name mysql-1 -e "MYSQL_ROOT_PASSWORD=123456" -e "MYSQL_DATABASE=docker" -e "MYSQL_USER=docker-user" -e "MYSQL_PASSWORD=123456" mysql:5.7
# docker logs -f mysql-1
# docker exec -it mysql-1 mysql -u docker-user -p123456 -h 127.0.0.1 --port 3306