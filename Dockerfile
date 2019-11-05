FROM openshift/jenkins-slave-base-centos7

MAINTAINER Kaushik Deb <kdeb@secureworks.com>

USER root

RUN yum -y install python3-pip python3-devel gcc

RUN pip3 install bzt

USER 1001
