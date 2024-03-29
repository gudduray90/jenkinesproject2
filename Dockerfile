FROM centos:latest
MAINTAINER gudduray90@gmail.com
RUN yum install httpd -y \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/loxury.zip /var/www/html
WORKDIR /var/www/html/
RUN unzip loxury.zip
RUN cp -rf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
