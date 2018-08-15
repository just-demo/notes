FROM openjdk:8-jdk

COPY build/libs/docker-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-Dspring.data.mongodb.uri=mongodb://test-m/test", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]