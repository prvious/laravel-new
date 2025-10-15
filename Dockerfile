FROM composer:latest

# Install Laravel installer globally
RUN composer global require laravel/installer

# Add composer global bin to PATH
ENV PATH="${PATH}:/tmp/vendor/bin"

# Set working directory
WORKDIR /app

# Copy entrypoint script
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]