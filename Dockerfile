FROM ubuntu:16.04


RUN apt-get update && \
  apt-get install -y --no-install-recommends openjdk-8-jdk

# copy WAR into image
COPY spring-boot-app-0.0.1-SNAPSHOT.war /app.war 
# run application with this command line 
#RUN apt-get install maven
CMD ["java", "-jar", "-Dspring.profiles.active=default", "/app.war"]
