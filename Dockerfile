# first line is always from and that is base image

FROM tomcat:8.0-jre8
#adds info about who created this image
LABEL maintainer="Kyle Tumlinson"

# move the WAR file to Tomcat
ADD target/employee-servlet-app.war /usr/local/tomcat/webapps
EXPOSE 8080

# cmd specifies what to run when container is run
CMD ["catalina.sh", "run"]