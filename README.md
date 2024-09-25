# thiioDemo
This setup runs a Laravel application using Nginx, PHP-FPM, and MySQL with Docker Compose. It also includes an optional random HTTP service.

## Requirements
- Docker
- Docker Compose

## Services
- **Laravel** (PHP-FPM): Handles the application logic.
- **Nginx**: Proxies requests to Laravel and serves static files.
- **MySQL**: Database service for Laravel.
- **Random HTTP** (optional): Returns a message for the `/thiio` route.

## Setup

1. Clone the repository.
2. Build and start the Docker containers:

   ```bash
   docker-compose up --build
   docker-compose --profile random up
## Final Setup

To get everything working:

    Build your Docker images and run the containers with docker-compose up --build.
    Access your Laravel application at http://devops.test (ensure devops.test is mapped to 127.0.0.1 in your /etc/hosts file).
    Test the random service by visiting http://devops.test/thiio (if the random HTTP service is running).
