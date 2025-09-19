# Use OpenJDK as base
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy all project files into container
COPY . .

# Make mvnw executable
RUN chmod +x ./mvnw

# Build the Spring Boot app (skip tests)
RUN ./mvnw clean package -DskipTests

# Expose the port Render assigns
EXPOSE 8080

# Run the Spring Boot JAR (use wildcard to match actual JAR)
CMD ["sh", "-c", "java -jar target/*.jar"]
