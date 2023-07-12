FROM php:7.4-apache

COPY . /app
WORKDIR /app

RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

CMD ["bash" , "start.sh"]
