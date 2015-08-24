#! /bin/bash

mkdir ~/dotfiles.old
if [ -f ~/.vimrc ];	then
	mv ~/.vimrc ~/dotfiles.old/
fi

if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/dotfiles.old/
fi

if [ -f ~/.vim/ ]; then
	mv ~/.vim/ ~/dotfiles.old/
fi

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vim/ ~/.vim

