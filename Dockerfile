FROM eclipse-temurin:17-jdk-alpine

# Install curl
RUN apk add --no-cache curl

# Set working directory
WORKDIR /app

# Download Lavalink.jar directly
RUN curl -L -o Lavalink.jar https://github.com/lavalink-devs/Lavalink/releases/latest/download/Lavalink.jar

# Copy your configuration file
COPY application.yml .

# Expose Lavalink port
EXPOSE 8080

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
