FROM centos:latest
MAINTAINER oscar
RUN yum update && yum clean all
RUN yum install httpd -y 
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80 

