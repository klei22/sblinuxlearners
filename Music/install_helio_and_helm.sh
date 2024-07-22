#!/bin/bash

# Define URLs and file paths
HELM_DEB_URL="https://tytel.org/static/dist/helm_0.9.0_amd64_r.deb"
HELM_DEB_FILE="/tmp/helm_0.9.0_amd64.deb"
HELIO_APPIMAGE_URL="https://ci.helio.fm/helio-3.13-x64.AppImage"
HELIO_APPIMAGE_FILE="/tmp/helio.AppImage"
HELM_PATCHES_DIR="/usr/share/helm/patches"

# Download Helm deb file
echo "Downloading Helm..."
wget -O "$HELM_DEB_FILE" "$HELM_DEB_URL"

# Install Helm using dpkg
echo "Installing Helm..."
sudo dpkg -i "$HELM_DEB_FILE"

# Cleaning up
sudo rm "$HELM_DEB_FILE"

# Check if dpkg encountered dependency issues and fix them
if [ $? -ne 0 ]; then
	echo "Fixing dependencies..."
	sudo apt-get install -f -y
fi

# Download Helio AppImage
echo "Downloading Helio..."
wget -O "$HELIO_APPIMAGE_FILE" "$HELIO_APPIMAGE_URL"

# Make Helio AppImage executable
echo "Making Helio executable..."
sudo chmod +x "$HELIO_APPIMAGE_FILE"

# Moving executable into path
sudo mv "$HELIO_APPIMAGE_FILE" /usr/bin/helio

