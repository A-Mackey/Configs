#!/bin/sh

# This script simply installs all the necessary packages needed
# for my neovim config so it is easy to settup on new devices.

echo $PATH
echo $0
echo ""

echo ""
echo " === Updating & Upgrading === "
echo ""

# Update all apt packages then upgrade them
sudo apt update
sudo apt upgrade

echo ""
echo " === Installing cURL === "
echo ""

# Install cURL
sudo apt install -y curl

echo ""
echo " === Installing Git === "
echo ""

# Install Git
sudo apt install git -y

echo ""
echo " === Installing fuse, libfuse2, python3-pip, and ack-grep === "
echo ""

# Install necessary tools
sudo apt-get install fuse libfuse2 python3-pip ack-grep -y
# -

echo ""
echo " === Installing Lua === "
echo ""

sudo apt install lua5.3 -y

echo ""
echo " === Installing nvim === "
echo ""

sudo apt install neovim -y

echo ""
echo " === Installing Vim-Plug === "
echo ""

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo ""
echo " === Copying Files Over === "
echo ""

cp ./init.vim ~/.config/nvim/

echo " ======= Done ======="

# -


