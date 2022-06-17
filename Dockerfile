<<<<<<< HEAD
FROM httpd:2.4
MAINTAINER oscar
COPY ./website /usr/local/apache2/htdocs/

=======
FROM httpd
MAINTAINER oscar
RUN yum -y update 
RUN yum install httpd -y 
COPY index.html /var/www/html/
CMD ["-D","FOREGROUND"]
EXPOSE 80 
>>>>>>> a0fbebecd479dc80cacf41eb461a3cdd3fbef636

