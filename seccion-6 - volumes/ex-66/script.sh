chmod 755 -R /opt/source1 $$ chown 1001:1001 -R /opt/source1
cp ./app/index.php /opt/source1
docker build -t apache:php .
docker run \
    -d \
    -p 5555:80 \
    -v /opt/source1:/var/www/html \
    -m "50mb" \
    --cpuset-cpus 0 \
    -e "ENV=dev" \
    -e "VIRTUALIZATION=docker" \
    --name apache \
    apache:php