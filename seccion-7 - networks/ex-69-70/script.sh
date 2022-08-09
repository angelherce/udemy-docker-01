docker network create \
    --driver bridge \
    --subnet 172.124.10.0/24 \
    --gateway 172.124.10.1 \
    docker-test-network

# docker network inspect docker-test-network | less