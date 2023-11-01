# Use a lightweight web server as the base image
FROM nginx:alpine

# Remove the default nginx welcome page
RUN rm -rf /usr/share/nginx/html/*

# Copy the shop-website folder into the container
COPY /var/lib/jenkins/workspace/MyProject /usr/share/nginx/html

# Expose the default HTTP port
EXPOSE 80

# Command to start the nginx server
CMD ["nginx", "-g", "daemon off;"]
