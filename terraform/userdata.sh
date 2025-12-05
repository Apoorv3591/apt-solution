#!/bin/bash
set -e

# Update and install deps
yum update -y
yum install -y python3 git

# (Optional) create app directory
mkdir -p /opt/app
cd /opt

# Clone  repository (public) 
git clone https://github.com/Apoorv3591/apt-solution.git

# Go to app folder
cd /opt/repo/app

# Install Python dependencies
pip3 install -r requirements.txt

# Run the app
nohup python3 server.py > /var/log/app.log 2>&1 &
