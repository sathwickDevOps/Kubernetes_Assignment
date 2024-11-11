# Use official Tomcat image from Docker Hub
FROM tomcat:9.0-jdk11

# Copy the WAR file into Tomcat's webapps folder
COPY target/docker-java-sample-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port (Tomcat's default port)
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]
