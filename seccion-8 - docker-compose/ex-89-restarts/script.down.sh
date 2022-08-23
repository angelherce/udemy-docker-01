docker-compose -f ./docker-compose.restart.no.yml down -v
docker-compose -f ./docker-compose.restart.always.yml down -v
docker-compose -f ./docker-compose.restart.unless-stopped.yml down -v
docker-compose -f ./docker-compose.restart.on-failure.yml down -v