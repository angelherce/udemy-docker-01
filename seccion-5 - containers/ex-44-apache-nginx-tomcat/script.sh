# https://hub.docker.com/_/nginx
docker run -d -p 7777:80 --name nginx nginx:latest

# https://hub.docker.com/_/httpd
docker run -d -p 8888:80 --name apache httpd:latest

# https://hub.docker.com/_/tomcat
docker run -d -p 9999:8080 --name tomcat tomcat:alpine