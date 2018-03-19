#!/bin/bash
#copies files from directory to this git repo

menu() {
    echo -en "What would you like to do?\n" \
        "1. Copy .vimrc file to repo.\n" \
        "2. Copy .tmux.conf file to repo.\n" \
        "3. Copy .zshrc file to repo.\n" \
        "4. Copy .Xresources file to repo.\n" \
        "5. Copy compton.conf file to repo.\n" \
        "6. Copy .conky folder to repo.\n" \
        "7. Copy dunst folder to repo.\n" \
        "8. Copy i3 folder to repo.\n" \
        "9. Copy polybar folder to repo.\n" \
        "10. Copy Wallpapers folder to repo.\n" \
        "11. Copy .fonts directory to repo.\n" \
        "Press 'E' to exit...\n\n"
}

loop() {
    read input

    case $input in 
        1) 
            echo "Copying .vimrc file to repo..."
            cp ~/.vimrc .vimrc
            ;;
        2) 
            echo "Copying .tmux.conf file to repo..."
            cp ~/.tmux.conf .tmux.conf
            ;;
        3)
            echo "Copying .zshrc file to repo..."
            cp ~/.zshrc .zshrc
            ;;
        4) 
            echo "Copying .Xresources file to repo..."
            cp ~/.Xresources .Xresources
            ;;
        5)
            echo "Copying compton.conf file from .config directory..."
            cp ~/.config/compton.conf compton.conf
            ;;
        6) 
            rm -r .conky
            echo "Copying .conky folder to repo..."
            cp -a ~/.conky .conky
            ;;
        7) 
            rm -r dunst
            echo "Copying dunst folder to repo..."
            cp -a ~/.config/dunst dunst
            ;;
        8) 
            rm -r i3
            echo "Copying i3 folder from .config directory..."
            cp -a ~/.config/i3 i3
            ;;
        9) 
            rm -r polybar
             echo "Copying polybar folder from .config directory..."
            cp -a ~/.config/polybar polybar
            ;;
        10)
            rm -r Wallpapers
            echo "Copying Wallpapers folder from Pictures directory..."
            cp -a ~/Pictures/Wallpapers Wallpapers
            ;;
        11)
            rm -r .fonts
            echo "Copying .fonts folder from home directory..."
            cp -a ~/.fonts .fonts
            ;;
        e|E)
            echo "Exiting btw haHAA"
            exit 0
            ;;
        *)
            printf "Not a valid input...Try again...\n\n"
            ;;
    esac
}

printf "This will overwrite local repo files... You have been warned\n\n"

while true; do

    menu ## Call the print menu function

    loop ## Call logic function

done


