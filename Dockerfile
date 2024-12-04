# Use an official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /home/container

# Copy the web host files into the container's working directory
COPY ./ /home/container/

# Expose the port on which the web server will run (default is 80)
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
