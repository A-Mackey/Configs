#!/bin/sh

# Simply copies the init.vim file located in current directory
# to the location of the working init.vim file

echo "Copying"

sudo cp ./init.vim ~/.config/nvim/

echo "Done"
