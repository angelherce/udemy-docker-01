docker run \
    -d \
    -p3306:3306 \
    -v /opt/mysql:/var/lib/mysql \
    --name mysql \
    -e "MYSQL_ROOT_PASSWORD=123456" \
    -e "MYSQL_DATABASE=docker-db" \
    -e "MYSQL_USER=docker-user" \
    -e "MYSQL_PASSWORD=123456" \
    mysql:5.7

# mysqldump -u root -h 127.0.0.1 -p123456 sys > ./sys.dump.sql
# mysql -u root -h 127.0.0.1 -p123456 docker-db < ./sys.dump.sql