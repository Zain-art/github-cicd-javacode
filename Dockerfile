# Use an appropriate base image for your Java application
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /usr/app

# Copy the JAR file into the container
COPY ./build/libs/java-app-1.0-SNAPSHOT.jar /usr/app/

# Run the JAR file when the container starts
CMD ["java", "-jar", "java-app-1.0-SNAPSHOT.jar"]
