#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

echo "Starting setup for Hugo and Go..."

# Step 1: Extract and move Hugo binary
echo "Extracting Hugo..."
tar -xvzf hugo_extended_0.140.2_Linux-64bit.tar.gz hugo
sudo mv hugo /usr/local/bin/

# Step 2: Extract and install Go
echo "Extracting and installing Go..."
sudo tar -C /usr/local -xzf ~/go1.21.0.linux-amd64.tar.gz

# Step 3: Add Go to PATH
echo "Updating PATH for Go..."
if ! grep -q '/usr/local/go/bin' ~/.zshrc; then
  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
  echo "PATH updated successfully."
else
  echo "PATH already includes Go."
fi

# Reload shell configuration
echo "Reloading shell configuration..."
source ~/.zshrc

# Step 4: Verify installations
echo "Verifying installations..."
echo -n "Hugo version: "
hugo version

echo -n "Go version: "
go version

echo "Setup completed successfully!"
