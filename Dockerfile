# Use an official Nginx image to serve static content
FROM nginx:alpine

# Copy the website files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80
