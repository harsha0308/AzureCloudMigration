From tomcat:latest
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/salesprocessing.war /usr/local/tomcat/webapps/ROOT.war
CMD ["catalina.sh","run"]