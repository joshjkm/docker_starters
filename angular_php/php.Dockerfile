FROM php:fpm

RUN apt update && apt install -y zlib1g-dev libpng-dev libzip-dev libzstd-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql gd bcmath sockets zip
