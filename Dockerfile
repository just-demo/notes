FROM openjdk:8-alpine
RUN apk update && apk add bash
RUN mkdir -p /opt/app
ENV APP_HOME /opt/app
WORKDIR $APP_HOME
COPY build/libs/notes-0.0.1-SNAPSHOT.jar $APP_HOME/app.jar
CMD ["java", "-Dspring.data.mongodb.uri=mongodb://test-m:27017/test", "-Djava.security.egd=file:/dev/./urandom", "-jar", "./app.jar"]