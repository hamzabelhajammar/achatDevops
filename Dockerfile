FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
RUN curl -u admin:hamza -o achat-1.0.jar "http://192.168.1.125:8081/repository/maven-releases/com/esprit/rh/achat/1.0/achat-1.0.jar" -L
ENTRYPOINT ["java","-jar","/achat-1.0.jar"]
EXPOSE 8089