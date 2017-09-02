FROM php:fpm

RUN apt-get update && apt-get -y install \
    libssl-dev \
    && docker-php-ext-install mbstring opcache \
    && pecl install mongodb redis \
    && docker-php-ext-enable redis mongodb.so
