#!/bin/bash
#copies files from git repo to their home directories

menu() {
    echo -en "What would you like to do?\n" \
        "1. Copy .vimrc file to local directory.\n" \
        "2. Copy .tmux.conf file to local directory.\n" \
        "3. Copy .zshrc file to local directory.\n" \
        "4. Copy .Xresources file to local directory.\n" \
        "5. Copy compton.conf file to local directory.\n" \
        "6. Copy .conky folder to local directory.\n" \
        "7. Copy dunst folder to local directory.\n" \
        "8. Copy i3 folder to local directory.\n" \
        "9. Copy polybar folder to local directory.\n" \
        "10. Copy Wallpapers folder to local directory.\n" \
        "11. Copy .fonts folder to local directory.\n" \
        "12. Copy argos folder to local directory\n" \ 
        "Press 'E' or 'Q' to exit...\n\n"
}

loop() {
    read input

    case $input in 
        1) 
            echo "Copying .vimrc file to home directory..."
            cp .vimrc ~/.vimrc
            ;;
        2) 
            echo "Copying .tmux.conf to home directory..."
            cp .tmux.conf ~/.tmux.conf
            ;;
        3)
            echo "Copying .zshrc file to home directory..."
            cp .zshrc ~/.zshrc
            ;;
        4) 
            echo "Copying .Xresources file to home directory..."
            cp .Xresources ~/.Xresources
            ;;
        5)
            echo "Copying compton.conf file to .config directory..."
            cp compton.conf ~/.config
            ;;
        6) 
            rm -r ~/.conky
            echo "Copying .conky folder to home directory..."
            cp -a .conky ~/.conky
            ;;
        7) 
            rm -r ~/.config/dunst
            echo "Copying dunst folder to home directory..."
            cp -a dunst ~/.config
            ;;
        8) 
            rm -r ~/.config/i3
            echo "Copying i3 folder to .config directory..."
            cp -a i3 ~/.config
            ;;
        9) 
            rm -r ~/.config/polybar
            echo "Copying polybar folder to .config directory..."
            cp -a polybar ~/.config
            ;;
        10)
            rm -r ~/Pictures/Wallpapers
            echo "Copying wallpapers folder to Pictures directory..."
            cp -a Wallpapers ~/Pictures/
            ;;
        11)
            rm -r ~/.fonts
            echo "Copying .fonts folder to home directory..."
            cp -a .fonts ~/.fonts
            ;;
        12)
            rm -r ~/.config/argos
            echo "Copying argos folder to home directory..."
            cp -a argos ~/.config
            ;;
        e|E|q|Q)
            echo "Exiting btw haHAA"
            exit 0
            ;;
        *)
            printf "Not a valid input...Try again...\n\n"
            ;;
    esac
}

printf "This will overwrite local config files... You have been warned\n\n"

while true; do

    menu ## Call the print menu function

    loop ## Call logic function

done


