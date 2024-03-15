# Start from the latest PHP base image
FROM php:latest

# Install required PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy the WordPress files
COPY . .

# Expose the port your WordPress site listens on
EXPOSE 80

# Start Apache when the container starts
CMD ["apache2-foreground"]
