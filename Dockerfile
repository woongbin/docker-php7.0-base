FROM ubuntu:16.04
LABEL "maintainer"="sirwoongke"
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install php php-fpm php-mbstring php-dom php-zip php-pdo php-tokenizer php-xml php-ctype php-json php-mysql php-curl php-gd php-cgi php-cli -y
RUN apt-get install curl git vim apache2 -y
RUN apt-get install libapache2-mod-php -y
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
