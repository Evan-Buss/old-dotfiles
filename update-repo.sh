#!/bin/bash
#copies files from directory to this git repo

read -p "This will overwrite all local repo files... Are you sure you want to proceed(y/n)? " answer


case "$answer" in
    y|Y)
        #################
        ## Files
        #################

        echo "Copying .vimrc file to repo..."
        cp ~/.vimrc .vimrc
        
        echo "Copying .tmux.conf file to repo..."
        cp ~/.tmux.conf .tmux.conf

        echo "Copying .zshrc file to repo..."
        cp ~/.zshrc .zshrc

        echo "Copying .zsh_history to repo"
        cp ~/.zsh_history .zsh_history
        
        echo "Copying .Xresources file to repo..."
        cp ~/.Xresources .Xresources

        echo "Copying compton.conf file from .config directory..."
        cp ~/.config/compton.conf compton.conf

        #################
        ## Folders
        #################

        echo "Removing old folders from repo directory..."
        rm -r i3
        rm -r polybar
        rm -r .conky
        rm -r dunst

        echo "Copying .conky folder to repo..."
        cp -a ~/.conky .conky

        echo "Copying dunst folder to repo..."
        cp -a ~/.config/dunst dunst

        echo "Copying i3 folder from .config directory..."
        cp -a ~/.config/i3 i3

        echo "Copying polybar folder from .config directory..."
        cp -a ~/.config/polybar polybar

        echo "Complete!";;

        #Can't upload because they all have git repos
        # echo "Copying rofi folder to repo..."
        # cp -a ~/.config/rofi rofi

        # echo "Copying .vim folder to repo"
        # cp -a ~/.vim .vim

        # echo "Copying .oh-my-zsh folder to repo..."
        # cp -a ~/.oh-my-zsh .oh-my-zsh

    n|N) 
        echo "Understandable. Have a great day...";;
    *)
        echo "Invalid Reponse... Exiting";;
esac



