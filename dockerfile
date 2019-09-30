FROM jenkins/jenkins:centos

USER root
COPY ./docker/docker /usr/bin/   

COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY ./config.xml /usr/jenkins_home