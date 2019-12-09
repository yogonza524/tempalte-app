FROM openjdk:11.0.3-jdk-slim

EXPOSE 8080
COPY build/libs/*.jar app/app.jar
WORKDIR app
ENTRYPOINT ["java", "-Dspring.profiles.active=${SPRING_PROFILES_ACTIVE}", "-jar", "app.jar"]
