FROM centos:latest
MAINTAINER oscar
RUN yum -y update && yum -y clean all
RUN yum install httpd -y 
COPY index.html /var/www/html/
CMD ["-D","FOREGROUND"]
EXPOSE 80 

