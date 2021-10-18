FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /app
COPY target/mancala.jar /app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]