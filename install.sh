#!/bin/bash
#copies files from git repo to their home directories

read -p "This will overwrite all your local config files... Are you sure you want to proceed(y/n)? " answer


case "$answer" in
    y|Y)
        #################
        ## Files
        #################
    
        echo "Copying .vimrc file to home directory..."
        cp .vimrc ~/.vimrc

        echo "Copying .tmux.conf to home directory..."
        cp .tmux.conf ~/.tmux.conf
        
        echo "Copying .zshrc file to home directory..."
        cp .zshrc ~/.zshrc

        echo "Copying .zsh_history file to home directoy..."
        cp .zsh_history ~/.zsh_history

        echo "Copying .Xresources file to home directory..."
        cp .Xresources ~/.Xresources
        
        echo "Copying compton.conf file to .config directory..."
        cp compton.conf ~/.config

        #################
        ## Folders
        #################

        echo "Removing old folders..."
        rm -r ~/.config/i3
        rm -r ~/.config/polybar
        rm -r ~/.conky
        rm -r ~/.config/dunst

        echo "Copying .conky folder to home directory..."
        cp -a .conky ~/.conky

        echo "Copying dunst folder to home directory..."
        cp -a dunst ~/.config

        echo "Copying i3 folder to .config directory..."
        cp -a i3 ~/.config

        echo "Copying polybar folder to .config directory..."
        cp -a polybar ~/.config

        echo "Complete!";;
        # echo "Copying .oh-my-zsh folder to home directory..."
        # cp -a .oh-my-zsh ~/.oh-my-zsh

        # echo "Copying .vim folder to home directory..."
        # cp -a .vim ~/.vim
    n|N) 
        echo "Understandable. Have a great day...";;
    *)
        echo "Invalid Reponse... Exiting";;
esac



