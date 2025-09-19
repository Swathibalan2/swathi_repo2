# Use an official OpenJDK runtime as base image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy Maven wrapper & project files
COPY . .

# Build the app (skip tests to speed up)
RUN ./mvnw clean package -DskipTests

# Expose the port Render assigns
EXPOSE 8080

# Run the Spring Boot JAR (replace with actual jar name if needed)
CMD ["java", "-jar", "target/your-app-0.0.1-SNAPSHOT.jar"]
