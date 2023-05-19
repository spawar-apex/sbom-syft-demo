# Basic nginx dockerfile with Alpine 3.14
FROM ubuntu:20.04

RUN apt-get -y update

RUN apt-get -y install nginx 

RUN apt-get install -y php-cli \
    && php-gd \
    && php-mbstring \
    && php-sqlite3 \
    && php-xml \
    && php-mysql \
    && lsb-release \
    && ca-certificates \
    && apt-transport-https \
    && software-properties-common

# Install composer to run Drupal
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
