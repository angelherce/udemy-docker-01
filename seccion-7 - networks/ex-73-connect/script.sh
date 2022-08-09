docker network create \
    --driver bridge \
    --subnet 172.124.10.0/24 \
    --gateway 172.124.10.1 \
    test-network-1

docker network create \
    --driver bridge \
    --subnet 172.124.11.0/24 \
    --gateway 172.124.11.1 \
    test-network-2

docker run -dti \
    --network test-network-1 \
    --name test1 \
    centos:latest

docker run -dti \
    --network test-network-2 \
    --name test2 \
    centos:latest

docker network connect test-network-1 test2

# docker inspect test2
# docker exec test1 bash -c "ping test2"
# docker exec test2 bash -c "ping test1"
# docker network disconnect test-network-1 test2
# docker exec test1 bash -c "ping test2"
# docker exec test2 bash -c "ping test1"