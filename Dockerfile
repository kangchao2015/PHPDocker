FROM php:8.1-fpm
COPY ./composer /usr/bin
RUN apt-get update && apt-get install -y \
      unzip zip
