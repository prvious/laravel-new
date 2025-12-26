FROM composer:latest AS composer

FROM php:8.4-alpine
ENV COMPOSER_HOME=/tmp

# Build argument for Laravel installer version (invalidates cache when changed)
ARG VERSION
COPY --from=composer /usr/bin/composer /usr/bin/composer

# Add composer global bin to PATH
ENV PATH="${PATH}:/tmp/vendor/bin"

# Install Laravel installer globally
RUN composer global require laravel/installer

# Set working directory
WORKDIR /app

# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]