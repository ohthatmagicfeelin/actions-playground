# Use an official nginx image as the base
FROM nginx:latest

# Copy a simple HTML file to the nginx default document root
COPY index.html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

LABEL org.opencontainers.image.source=https://github.com/ohthatmagicfeelin/actions-playground

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]