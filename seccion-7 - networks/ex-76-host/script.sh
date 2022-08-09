docker run -dti \
    --network host \
    --name test \
    centos:latest

# docker exec test bash -c "hostname"