# Basic nginx dockerfile with Alpine 3.14
FROM ubuntu:20.04

RUN apt-get -y update

RUN apt-get -y install nginx 

RUN apt-get install -y php-cli \
    && apache2 \
    && ca-certificates \
    && curl \
    && software-properties-common

RUN apt-get install -y php7.4 \
    && php7.4-mysql \
    && php-common \
    && php7.4-cli \
    && php7.4-json \
    && php7.4-common \
    && php7.4-opcache \
    && libapache2-mod-php7.4

# Install composer to run Drupal
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
