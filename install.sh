#! /bin/bash

mkdir ~/dotfiles.old
mv ~/.vimrc ~/dotfiles.old/
mv ~/.bashrc ~/dotfiles.old/
mv ~/.vim/ ~/dotfiles.old/

ln -s .vimrc ~/.vimrc
ln -s .bashrc ~/.bashrc
ln -s .vim/ ~/.vim/

