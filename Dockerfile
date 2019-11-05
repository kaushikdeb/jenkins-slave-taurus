FROM openshift/jenkins-slave-base-centos7

MAINTAINER Kaushik Deb <kdeb@secureworks.com>

USER root

#RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-10.noarch.rpm
#RUN rpm -ivh epel-release-7-10.noarch.rpm

RUN yum -y install python-pip

RUN yum install java-1.8.0-openjdk-headless.x86_64 java-1.8.0-openjdk-devel.x86_64 python-devel.x86_64 libxml2-devel.x86_64 libxslt-devel.x86_64 zlib.x86_64 gcc.x86_64

RUN pip install bzt

USER 1001
