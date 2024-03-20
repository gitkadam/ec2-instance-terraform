# Use the official Nginx base image
FROM nginx:latest

# Copy custom configuration file to Nginx's configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static HTML files to serve
COPY html/ /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
