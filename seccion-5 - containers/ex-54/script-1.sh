docker build -t apache:php .
docker run -d -p 5555:80 -m "50mb" --cpuset-cpus 0 -e "ENV=dev" -e "VIRTUALIZATION=docker" --name apache-1 apache:php