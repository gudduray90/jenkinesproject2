FROM centos:latest
MAINTAINER gudduray90@gmail.com
RUN yum install httpd \
 zip \
 unzip
ADD https:www.free.css.com/assets/files/free-css-template/download/page247/kindle.zip /var/www/html/WORKDIR /var/www/html
WORKDIR /var/www/html/
RUN unzip kundle.zip
RUN cp -rf markups-kindle/* .
RUN rm -rf _MACOSX markups-kindle.zip
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
EXPOSE 80
