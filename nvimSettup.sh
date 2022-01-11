#!/bin/sh

# This script simply installs all the necessary packages needed
# for my neovim config so it is easy to settup on new devices.

echo $PATH
echo $0

echo " === Updating & Upgrading === "

# Update all apt packages then upgrade them
sudo apt update
sudo apt upgrade

echo " === Installing cURL === "

# Install cURL
sudo apt install -y curl

echo " === Installing Git === "

# Install Git
sudo apt install git-all

echo " === Installing fuse, libfuse2, python3-pip, and ack-grep === "

# Install necessary tools
sudo apt-get install fuse libfuse2 python3-pip ack-grep -y
# -

echo " === Installing nvim === "

# Download and install the app image
wget --quiet https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage --output-document nvim

# Set the owner to root and make nvim available to all users
chmod +x nvim
sudo chown root:root nvim

# move the binary file
sudo mv nvim /usr/bin

# Move to home directory and create the subfolder structure to store the config files
cd ~
mkdir -p .config/nvim

echo " ======= Done ======="

# -


