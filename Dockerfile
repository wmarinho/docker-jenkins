FROM wmarinho/ubuntu:oracle-jdk-7

MAINTAINER Wellington Marinho wpmarinho@globo.com


RUN wget -q http://mirrors.jenkins-ci.org/war/latest/jenkins.war -O /opt/jenkins.war
RUN chmod 644 /opt/jenkins.war
ENV JENKINS_HOME /jenkins

ENTRYPOINT ["java", "-jar", "/opt/jenkins.war"]

EXPOSE 8080
#CMD [""]
