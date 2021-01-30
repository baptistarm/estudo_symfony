# FROM php:7.3-apache
# RUN docker-php-ext-install mysqli

# FROM php:7.3-apache
# COPY . /var/www
# WORKDIR /var/www
# EXPOSE 80

FROM php:7.3-apache
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
EXPOSE 80