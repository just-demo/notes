POST http://localhost:8080/notes {"body": "abc"}
GET http://localhost:8080/notes

https://dev-pages.info/how-to-run-spring-boot-and-mongodb-in-docker-container/
https://dev-pages.info/how-to-run-spring-boot-and-mongodb-in-docker-using-docker-compose/

#############################
docker network create spring_boot_mongo_net
mkdir ~/docker-mongo-data
docker run --name test-m --network=spring_boot_mongo_net -v ~/docker-mongo-data:/data/db mongo
./gradlew clean build
docker build -t test-spring-boot .
docker run --name test-sb --network=spring_boot_mongo_net -p 8080:8080 test-spring-boot

#############################
docker export test-sb > ~/downloads/test-sb.tar

docker stop test-m
docker rm test-m

docker stop test-sb
docker rm test-sb
docker rmi test-spring-boot