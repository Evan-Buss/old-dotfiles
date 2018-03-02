#!/bin/bash
#copies files from git repo to their home directories

echo "Removing old folders..."
rm -r ~/.conky
rm -r ~/.config/polybar
rm -r ~/.config/i3
# rm -r .vim
# rm -r .oh-my-zsh
cp -a i3 ~/.config
cp -a polybar ~/.config
echo "Copying .vimrc to home directory..."
cp .vimrc ~/.vimrc

# echo "Copying .vim folder to home directory..."
# cp -a .vim ~/.vim

echo "Copying .zshrc to home directory..."
cp .zshrc ~/.zshrc

# echo "Copying .oh-my-zsh folder to home directory..."
# cp -a .oh-my-zsh ~/.oh-my-zsh

echo "Copying .tmux.conf to home directory..."
cp .tmux.conf ~/.tmux.conf

echo "Copying .conky to home directory..."
cp -a .conky ~/.conky
