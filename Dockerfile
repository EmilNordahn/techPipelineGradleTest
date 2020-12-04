#FROM openjdk:12
#ARG JAR_FILE
#COPY ${JAR_FILE} demo-0.1.0-SNAPSHOT.jar
#ENTRYPOINT ["java", "-jar", "/demo-0.1.0-SNAPSHOT.jar"]

FROM hub.docker.com/repository/docker/emilnordahn/techpipelinegradletest
RUN echo 'Her noget tekst'