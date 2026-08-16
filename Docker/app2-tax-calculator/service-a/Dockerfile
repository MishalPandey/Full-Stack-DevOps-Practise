FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY build/libs/*.jar app.jar
EXPOSE 3000
CMD ["java", "-jar", "app.jar", "--server.port=3000"]