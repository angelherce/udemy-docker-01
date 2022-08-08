docker build -t centos:proof .
docker run -dit --name proof centos:proof
docker exec -it -u root proof bash
echo $PROOF