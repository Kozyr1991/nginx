FROM centos:7
RUN yum install epel-release -y
RUN yum install nginx -y
RUN touch /ip.txt
EXPOSE 80 
