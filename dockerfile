FROM jenkins/jenkins:centos

USER root
COPY ./docker/docker /usr/bin/   

ENV JENKINS_UC_DOWNLOAD https://mirrors.tuna.tsinghua.edu.cn/jenkins
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt

COPY ./config.xml /usr/jenkins_home