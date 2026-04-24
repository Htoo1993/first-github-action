# Use a lightweight base image with Java 17
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from your build folder to the container
# For Maven, use: target/*.jar. For Gradle, use: build/libs/*.jar
ARG JAR_FILE=target/first-github-action.jar
COPY ${JAR_FILE} first-github-action.jar

# Run the application
ENTRYPOINT ["java", "-jar", "first-github-action.jar"]