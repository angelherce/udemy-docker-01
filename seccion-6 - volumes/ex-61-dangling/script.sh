docker volume rm $(docker volume ls -f "dangling=true" -q)
docker volume ls -f "dangling=true" -q | xargs docker volume rm