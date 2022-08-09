docker run -d \
    -p 80:80 \
    -v /opt/nginx:/var/log/nginx \
    --name nginx \
    nginx

# cat /opt/nginx/error.log