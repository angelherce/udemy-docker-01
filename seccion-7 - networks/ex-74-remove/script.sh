docker network create \
    --driver bridge \
    --subnet 172.124.10.0/24 \
    --gateway 172.124.10.1 \
    test-network-1

docker network rm test-network-1