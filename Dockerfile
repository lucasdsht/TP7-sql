# Use an official MySQL image as the base image
FROM mysql:latest

# Environment variables to configure MySQL
ENV MYSQL_ROOT_PASSWORD=password
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Expose port 3306 to allow external connections
EXPOSE 3306

