FROM openjdk:8-jdk-alpine
MAINTAINER Manju

RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.83/bin/apache-tomcat-9.0.83.tar.gz
RUN tar -xf apache-tomcat-9.0.83.tar.gz
RUN mkdir tomcat
RUN mv apache-tomcat-9.0.83 /tomcat/

WORKDIR tomcat
COPY Amazon.war /apache-tomcat-9.0.83/webapps/

