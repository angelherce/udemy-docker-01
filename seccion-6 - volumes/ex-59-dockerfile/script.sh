docker build -t centos:volume1 -f ./dockerfile1 .
docker run -dit --name centos1 centos:volume1
# docker exec -it centos1 bash
# touch /opt/file1.txt
# touch /opt/file2.txt
# exit
# sudo ls /var/lib/docker/volumes/5606ad0a0c8705cad55e8c0560c20059d8eaf5da180e0c0c48780eceaa47474f/_data