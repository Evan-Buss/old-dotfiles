#!/bin/bash
#copies files from directory to this git repo
echo "Removing old files from repo directory"
#rm .vimrc

#rm .zshrc
#rm .zsh_history

#rm .tmux.conf
rm -r .conky

echo "Copying .vimrc to repo..."
cp ~/.vimrc .vimrc

# echo "Copying .vim folder to repo"
# cp -a ~/.vim .vim

echo "Copying .zshrc to repo..."
cp ~/.zshrc .zshrc

echo "Copying .zsh_history to repo"
cp ~/.zsh_history .zsh_history

# echo "Copying .oh-my-zsh folder to repo..."
# cp -a ~/.oh-my-zsh .oh-my-zsh

echo "Copying .tmux.conf to repo..."
cp ~/.tmux.conf .tmux.conf

echo "Copying .conky folder to repo..."
cp -a ~/.conky .conky
