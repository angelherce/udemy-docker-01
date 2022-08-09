docker run -d -p 27017:27017 -v /opt/mongo:/data/db --name mongo mongo:latest

# docker exec -it mongo bash
# mongo
# use mongo-db
# db.movie.insert({"name":"Pesadilla antes de Navidad"})
# show dbs
# show tables
# db.movie.find()