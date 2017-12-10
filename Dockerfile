FROM php:7.1-fpm

RUN apt-get update && apt-get install --yes --no-install-recommends \
    libssl-dev \
    && docker-php-ext-install mbstring opcache \
    && pecl install mongodb redis \
    && docker-php-ext-enable redis mongodb.so
