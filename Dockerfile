From tomcat:8.5

MAINTAINER vgtech

LABEL version=v2

COPY dakmanagement /usr/local/tomcat/webapps/ROOT

EXPOSE 8080
