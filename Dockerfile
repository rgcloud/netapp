From tomcat:8.5

MAINTAINER vgtech

LABEL version=v5

RUN apt-get update && apt-get install -y unzip

RUN rm -f /usr/local/tomcat/dakmanagement

COPY dakmanagement.zip /usr/local/tomcat/webapps/ROOT

RUN cd /usr/local/tomcat/webapps/ROOT/

RUN unzip -n /usr/local/tomcat/webapps/ROOT/dakmanagement.zip

RUN cp -r /usr/local/tomcat/dakmanagement /usr/local/tomcat/webapps/

RUN ls

RUN ls /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080
