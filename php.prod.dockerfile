FROM php:8.0.0-fpm-alpine

ADD ./php/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel

RUN mkdir -p /var/www/html

ADD ./src/ /var/www/html

RUN chmod -R 777 /var/www/html/storage
RUN chmod -R 777 /var/www/html/bootstrap/cache

RUN docker-php-ext-install pdo pdo_mysql

RUN apk --no-cache add pcre-dev ${PHPIZE_DEPS} \
    && pecl install redis \
    && docker-php-ext-enable redis \
    && apk del pcre-dev ${PHPIZE_DEPS}

RUN chown laravel:laravel /var/www/html
