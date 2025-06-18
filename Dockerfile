# Imagen base Java 17 (Eclipse Temurin es un JDK OpenJDK de confianza)
FROM openjdk:17-slim

# Carpeta de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el jar construido dentro del contenedor
COPY target/eureka-server-0.0.1-SNAPSHOT.jar app.jar

# Puerto que expone la aplicación
EXPOSE 8761

# Comando para iniciar la app
ENTRYPOINT ["java", "-jar", "app.jar"]