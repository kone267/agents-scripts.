#!/bin/bash

# Step 1: Update the system
echo "Step 1: Updating the system..."
sudo yum update -y

# Step 2: Install required packages
echo "Step 2: Installing required packages..."
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Step 3: Set up Docker repository
echo "Step 3: Setting up Docker repository..."
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Step 4: Install Docker
echo "Step 4: Installing Docker..."
sudo yum install -y docker-ce docker-ce-cli containerd.io

# Step 5: Start and enable Docker service
echo "Step 5: Starting and enabling Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Step 6: Add current user to the 'docker' group
echo "Step 6: Adding current user to the 'docker' group..."
sudo usermod -aG docker $USER

# Step 7: Reloading shell to apply changes
echo "Step 7: Reloading shell to apply changes..."
exec sudo su -l $USER

# Done!
echo "Docker installation completed successfully!"
