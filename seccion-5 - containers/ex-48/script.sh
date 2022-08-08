docker build -t centos:proof .
docker run -dit -m "500mb" --cpuset-cpus 0-1 --name proof centos:proof