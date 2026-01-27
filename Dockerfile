FROM eclipse-temurin:25-jre-alpine-3.23

WORKDIR /app

ARG JAR_FILE=target/spring-petclinic-4.0.0-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
