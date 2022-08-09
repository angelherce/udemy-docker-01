# sudo chmod 755 -R /home/jenkins && sudo chown 1001:1001 -R /home/jenkins

docker run -d -p 8080:8080 -v /home/jenkins:/var/jenkins_home --name jenkins jenkins/jenkins:latest

# docker exet jenkins cat /var/jenkins_home/secrets/initialAdminPassword