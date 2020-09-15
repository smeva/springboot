FROM alpine:3.10
RUN apk add openjdk8
WORKDIR app
copy target/*.jar app/springbootapp-1.0.0.jar
ENTRYPOINT ["java","-jar","app/springbootapp-1.0.0.jar"]
