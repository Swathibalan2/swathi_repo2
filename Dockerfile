# Use OpenJDK as base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Make mvnw executable
RUN chmod +x ./mvnw

# Build the app
RUN ./mvnw clean package -DskipTests

# Expose the port Render assigns
EXPOSE 8080

# Run the Spring Boot JAR (replace with actual jar name)
CMD ["java", "-jar", "target/your-app-0.0.1-SNAPSHOT.jar"]
