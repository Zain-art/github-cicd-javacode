# Use OpenJDK 17 as the base image
FROM openjdk:17-jre-alpine

EXPOSE 8080

# Copy the built JAR file into the container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Set the working directory
WORKDIR /usr/app

# Run the application with Java 17
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
