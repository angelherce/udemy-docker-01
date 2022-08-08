docker build -t apache:php .
docker run -d -p 8181:80 -m "100mb" --cpuset-cpus 0-1 -e "ENV=stg" -e "VIRTUALIZATION=docker" -e "TYPE=container" --name apache-2 apache:php