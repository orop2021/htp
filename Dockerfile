
FROM httpd:2.4
MAINTAINER oscar
COPY ./website /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["echo hello world", "-D", "FOREGROUND"]

