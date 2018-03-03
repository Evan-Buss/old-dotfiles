#!/bin/bash
#copies files from git repo to their home directories

echo "Removing old folders..."
rm -r ~/.conky
rm -r ~/.config/polybar
rm -r ~/.config/i3
rm -r ~/.config/rofi
rm -r ~/.config/neofetch
# rm -r .vim
# rm -r .oh-my-zsh

echo "Copying i3 folder to .config directory..."
cp -a i3 ~/.config

echo "Copying polybar folder to .config directory..."
cp -a polybar ~/.config

echo "Copying compton.conf to .config directory..."
cp compton.conf ~/.config

echo "Copying neofetch folder to .config directory..."
cp -a neofetch ~/.config

echo "Copying .vimrc to home directory..."
cp .vimrc ~/.vimrc

echo "Copying .zshrc to home directory..."
cp .zshrc ~/.zshrc

echo "Copying .tmux.conf to home directory..."
cp .tmux.conf ~/.tmux.conf

echo "Copying .conky to home directory..."
cp -a .conky ~/.conky

# echo "Copying .oh-my-zsh folder to home directory..."
# cp -a .oh-my-zsh ~/.oh-my-zsh

# echo "Copying .vim folder to home directory..."
# cp -a .vim ~/.vim
