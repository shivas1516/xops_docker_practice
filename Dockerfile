FROM maven:3.8.5-openjdk-17 AS builder

# Copy your Maven project files
COPY . /app
WORKDIR /app

# Package the app (this will also download dependencies and run tests)
RUN mvn clean package -DskipTests

# -------- Stage 2: Run the app with JRE --------
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the built jar from the builder stage
COPY --from=builder /app/target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 9000

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
