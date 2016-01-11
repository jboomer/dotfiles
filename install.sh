#! /bin/bash

# Get the full directory where the script is stored
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"


# Store original dotfiles in dotfiles.old in the home directory
mkdir ~/dotfiles.old
if [ -e ~/.vimrc ];	then
	mv ~/.vimrc ~/dotfiles.old/
fi

if [ -e ~/.bashrc ]; then
	mv ~/.bashrc ~/dotfiles.old/
fi

if [ -e ~/.vim/ ]; then
	mv ~/.vim/ ~/dotfiles.old/
fi

# Create softlinks to dotfiles in this repo in the home directory
ln -s ${SCRIPT_DIR}/.vimrc ~/.vimrc
ln -s ${SCRIPT_DIR}/.bashrc ~/.bashrc
ln -s ${SCRIPT_DIR}/.vim/ ~/.vim

