# Use the official Nginx image from Docker Hub as a base image
FROM nginx:alpine

# Copy the website's static files into the container's default Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the website accessible from the outside
EXPOSE 80

# Nginx will automatically start when the container runs (default entrypoint)
