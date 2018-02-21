#!/bin/bash
#copies files from git repo to their home directories
echo "Copying .vimrc to home directory..."
cp .vimrc ~/.vimrc

echo "Copying .zshrc to home directory..."
cp .zshrc ~/.zshrc 

echo "Copying .tmux.conf to home directory..."
cp .tmux.conf ~/.tmux.conf

echo "Copying .conky to home directory..."
cp -r .conky ~/.conky
