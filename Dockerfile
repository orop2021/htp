FROM centos
MAINTAINER oscar
RUN yum -y update 
RUN yum install httpd -y 
COPY index.html /var/www/html/
CMD ["-D","FOREGROUND"]
EXPOSE 80 

