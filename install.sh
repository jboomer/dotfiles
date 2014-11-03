#! /bin/bash

mkdir ~/dotfiles.old
mv ~/.vimrc ~/dotfiles.old/
mv ~/.bashrc ~/dotfiles.old/
mv ~/.vim/ ~/dotfiles.old/

ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vim/ ~/.vim/

