# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/springtest-0.0.1-SNAPSHOT.jar

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} app.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","app.jar"]




FROM node:alpine

WORKDIR /usr/app

COPY package.json ./

COPY package-lock.json ./

COPY ./ ./

# Add bash
RUN apk add --no-cache bash

RUN chmod +x ./env.sh

CMD ["npm", "start"]