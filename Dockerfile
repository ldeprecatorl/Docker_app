FROM openjdk:11-jdk-slim
RUN apt update
RUN apt install -y curl
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]