FROM centos:7

MAINTAINER Vitaliy Kozyr  <kozyrvitaliy@gmail.com>

#install php & httpd & memcached & redis
RUN yum -y install http://rpms.famillecollet.com/enterprise/remi-release-7.rpm
ADD ./nginx.repo /etc/yum.repos.d/
RUN touch /home/in.txt
RUN yum -y install --enablerepo=remi,remi-php56 php php-opcache php-pecl-memcache php-intl  php-devel php-mbstring php-mcrypt php-mysqlnd php-pecl-xdebug php-pecl-xhprof php-gd php-fpm php-twig-ctwig redis php-pecl-redis nano wget pwgen zip unzip net-tools memcached telnet cronie nginx sendmail
ENV TERM xterm


EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]
