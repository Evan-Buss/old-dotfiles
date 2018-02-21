#!/bin/bash
#copies files from directory to this git repo
echo "Copying .vimrc to repo..."
cp ~/.vimrc .vimrc

echo "Copying .zshrc to repo..."
cp ~/.zshrc .zshrc

echo "Copying .tmux.conf to repo..."
cp ~/.tmux.conf .tmux.conf

echo "Copying .conky to repo..."
cp ~/.conky .conky