docker container rm cobranzas

docker run --publish 8082:8080 --network=dnet1 -d --rm --name cobranzas cobranzas-sb

//--network=dnet1 para que le vea a la red que se crea con Docker.
