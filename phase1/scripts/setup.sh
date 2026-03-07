#!/bin/bash

# ==================================================
# Environment Setup Script for Product API Project
# This script prepares a Ubuntu server environment
# to run the Node.js Express application.
# ==================================================

set -e

echo "Starting environment setup..."

# Update system packages
echo "Updating package list..."
sudo apt update

# Install required OS packages
echo "Installing system packages..."
sudo apt install -y git curl build-essential

# Install Node.js runtime and npm
echo "Installing Node.js and npm..."
sudo apt install -y nodejs npm

# Show installed versions
echo "Node version:"
node -v

echo "NPM version:"
npm -v

# Ensure script runs in project root
if [ ! -f package.json ]; then
  echo "Error: package.json not found. Run this script in the project root directory."
  exit 1
fi

# Create necessary directories for the application
echo "Creating application directories..."

# Directory for uploaded product images
mkdir -p public/uploads

# Directory for logs
mkdir -p logs

# Install project dependencies
echo "Installing project dependencies..."
npm install

echo "Environment setup completed successfully."