#!/bin/bash
#copies files from directory to this git repo
echo "Removing old folders from repo directory..."
rm -r i3
rm -r polybar
rm -r .conky
rm -r neofetch
rm -r rofi

echo "Copying polybar from .config directory..."
cp -a ~/.config/polybar polybar

echo "Copying i3 from .config directory..."
cp -a ~/.config/i3 i3

echo "Copying compton.conf from .config directory..."
cp ~/.config/compton.conf compton.conf

echo "Copying .vimrc to repo..."
cp ~/.vimrc .vimrc

echo "Copying .zshrc to repo..."
cp ~/.zshrc .zshrc

echo "Copying .zsh_history to repo"
cp ~/.zsh_history .zsh_history

echo "Copying .tmux.conf to repo..."
cp ~/.tmux.conf .tmux.conf

echo "Copying .conky folder to repo..."
cp -a ~/.conky .conky

# echo "Copying .vim folder to repo"
# cp -a ~/.vim .vim

# echo "Copying .oh-my-zsh folder to repo..."
# cp -a ~/.oh-my-zsh .oh-my-zsh
