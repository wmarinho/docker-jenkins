FROM wmarinho/ubuntu:oracle-jdk-7

MAINTAINER Wellington Marinho wpmarinho@globo.com


RUN wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
RUN sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

RUN apt-get update -y &&\
    apt-get install jenkins -y 

EXPOSE 8080
