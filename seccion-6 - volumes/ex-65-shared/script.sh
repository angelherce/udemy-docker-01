docker build -t centos:generator .

docker run \
    -d \
    -v "$(pwd)/common":/opt \
    --name generator \
    centos:generator

docker run \
    -d \
    -p 80:80 \
    -v "$(pwd)/common":/usr/share/nginx/html \
    --name nginx \
    nginx:alpine