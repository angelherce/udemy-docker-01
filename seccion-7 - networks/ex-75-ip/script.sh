docker network create \
    --driver bridge \
    --subnet 172.128.10.0/24 \
    --gateway 172.128.10.1 \
    test-network

docker run -dti \
    --network test-network \
    --ip 172.128.10.50 \
    --name test \
    centos:latest

# docker inspect test