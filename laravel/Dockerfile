FROM php:8.1-fpm-alpine

# Install necessary extensions and dependencies
RUN apk add --no-cache \
    mysql-client \
    && docker-php-ext-install pdo pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Copy application code
COPY . /var/www/html

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Install application dependencies
RUN composer install

# Set permissions
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 9000

CMD ["php-fpm"]
