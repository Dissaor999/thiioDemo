#!/bin/sh

# Wait for MySQL to be ready
echo "Waiting for MySQL..."
until mysqladmin ping -h"$DB_HOST" --silent; do
    sleep 1
done

# Run migrations and seed database if not already done
php artisan key:generate
php artisan migrate --force
php artisan db:seed --force

# Start PHP-FPM
php-fpm