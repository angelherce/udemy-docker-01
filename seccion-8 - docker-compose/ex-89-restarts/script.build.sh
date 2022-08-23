docker-compose -f ./docker-compose.restart.no.yml build
docker-compose -f ./docker-compose.restart.always.yml build
docker-compose -f ./docker-compose.restart.unless-stopped.yml build
docker-compose -f ./docker-compose.restart.on-failure.yml build