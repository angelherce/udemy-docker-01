# https://hub.docker.com/_/jenkins
docker run -d -p 8080:8080 --name jenkins jenkins/jenkins:latest

# docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword