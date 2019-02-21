#!/bin/sh

#Installs themes 
#Thin wrapper around install-gnome-themes
#Original Repo
#https://github.com/tliron/install-gnome-themes.git

if [ -f ~/.themes/ ]
#Copies current themes into different folder
    echo "Themes files detected!"
    
    cp -r ~/.themes/ ~/.themes.old/
    rm -r ~/.themes/
    echo "Made "
else 
    echo "No previous themes dir found.."
if [ -d ~/gnome-themes/ ]; then
echo "Installing dependencies... "
bash ~/gnome-themes/install-requirements-debian

else 
    echo "File not downloaded! Is git installed?"
    echo "exiting..."
    exit 1
fi 

echo "Installing themes..."
bash ~/gnome-themes/install-gnome-themes
echo "all Done!"

echo "Removing the gnome themes folder"
rm -rf ~/gnome-themes/

exit 1