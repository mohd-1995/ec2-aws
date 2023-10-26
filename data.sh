#!/bin/bash

# Update the operating system and install Docker
sudo yum update -y
sudo yum install -y docker

# Start the Docker service
sudo service docker start

# Add the ec2-user to the Docker group
sudo usermod -a -G docker ec2-user

# Configure Docker to start on boot
sudo chkconfig docker on

# Adjust permissions on the Docker socket
sudo chmod 666 /var/run/docker.sock

# Stop all running containers (if any)
sudo docker stop $(sudo docker ps -a -q)

# Remove all stopped containers (if any)
sudo docker rm $(sudo docker ps -a -q)

# Remove the existing Docker image (if it exists)
sudo docker rmi mohd1995/ec2-web

# Pull the Docker image from Docker Hub
sudo docker pull mohd1995/ec2-web

# Run the Docker container with the latest image
sudo docker run -d -p 80:80 mohd1995/ec2-web:latest




