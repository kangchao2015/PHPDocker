FROM php:8.0.7-fpm
COPY ./composer /usr/bin
RUN apt-get update && apt-get install -y \
      unzip zip git\
      && docker-php-source extract \
      && docker-php-ext-install pdo_mysql \
      && docker-php-ext-install pcntl \
      && docker-php-source delete

