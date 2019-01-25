#get image from centos
FROM centos:7
RUN yum update -y -q
#Install maven
RUN yum install maven -y
#Install wget & sshpass 
RUN yum install wget sshpass tar -y
#Remove openjdk package
RUN yum remove openjdk-8-jdk openjdk-8-jdk-headless
#Download oracle-jdk
CMD wget https://download.oracle.com/otn-pub/java/jdk/8u202-b08/1961070e4c9b4e26a04e7f5a083f551e/jdk-8u202-linux-x64.tar.gz
CMD tar -xvf jdk-8u202-linux-x64.tar.gz
CMD cp -r jdk1.8.0_202 /opt/
CMD ln -s /opt/jdk1.8.0_202/bin/java /usr/bin/java
ENV JAVA_HOME=/opt/jdk1.8.0_202
ENV JAVA_VERSION=8u202

