FROM openjdk:12
ARG JAR_FILE
COPY ${JAR_FILE} demo-0.1.0-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "/demo-0.1.0-SNAPSHOT.jar"]

USER root                # This changes default user to root
RUN chown -R gradle /app # This changes ownership of folder
USER gradle              # This changes the user back to the default user "gradle"