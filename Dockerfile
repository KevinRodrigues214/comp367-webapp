FROM tomcat:10.1
COPY target/comp367-webapp-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/app.war