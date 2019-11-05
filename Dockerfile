#FROM openshift/jenkins-slave-base-centos7
FROM centos:7

MAINTAINER Kaushik Deb <kdeb@secureworks.com>

USER root

#RUN wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-12.noarch.rpm

#RUN rpm -ivh epel-release-7-12.noarch.rpm

RUN yum -y install epel-release

RUN yum -y install python3-pip

#RUN mv /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.bkup

RUN yum -y install java-1.8.0-openjdk-headless.x86_64 java-1.8.0-openjdk-devel.x86_64 python3-devel.x86_64 libxml2-devel.x86_64 libxslt-devel.x86_64 zlib.x86_64 gcc.x86_64

RUN pip3 install bzt

USER 1001
