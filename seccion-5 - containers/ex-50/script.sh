docker build -t centos:ex50 .
docker run -dit --name centos50 centos:ex50
docker exec -it centos50 bash
touch file-1.txt
touch /opt/volume/file-2.txt
docker commit centos50 centos50-commit
docker run -dit --name centos50-commit centos50-commit
docker exec -it centos50-commit bash