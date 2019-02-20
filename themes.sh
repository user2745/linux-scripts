#!/bin/sh


if [ -f ~/.themes/ ]
#Copies current themes into different folder
    echo "Themes files detected!"
    
    cp -r ~/.themes/ ~/.themes.old/
    rm -r ~/.themes/
    echo "Made "
else 
    echo "No previous themes dir found.."
    echo ""
fi 

#Original Repo
#https://github.com/tliron/install-gnome-themes.git