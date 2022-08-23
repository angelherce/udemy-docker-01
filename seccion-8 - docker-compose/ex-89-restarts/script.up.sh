docker-compose -f ./docker-compose.restart.no.yml up
docker-compose -f ./docker-compose.restart.always.yml up
docker-compose -f ./docker-compose.restart.unless-stopped.yml up
docker-compose -f ./docker-compose.restart.on-failure.yml up