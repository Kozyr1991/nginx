FROM centos:7
RUN yum install epel-release -y
RUN yum install nginx -y
RUN yum update -y

EXPOSE 80 443
