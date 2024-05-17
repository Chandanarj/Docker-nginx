# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Set the maintainer label
LABEL maintainer="yourname@example.com"

# Create a directory for the website content
RUN mkdir -p /usr/share/nginx/html

# Copy the website content into the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
