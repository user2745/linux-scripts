#!/bin/sh

#Installs themes 
#Thin wrapper around install-gnome-themes
#Original Repo
#https://github.com/tliron/install-gnome-themes.git

backupThemes(){

if [ -f ~/.themes/ ]; then
#Copies current themes into different folder
    echo "Themes files detected!"  
    cp -r ~/.themes/ ~/.themes.old/
    rm -r ~/.themes/
    mkdir ~/.themes
    echo "moved old themes dir - find it at ~/.themes.old/"
else
    echo "No previous themes dir found.."
     fi 

}

makeFolder() {

echo "downloading gnome themes "
git clone https://github.com/tliron/install-gnome-themes ~/gnome-themes/

if [ -d ~/gnome-themes/ ]; then
echo "Installing dependencies... "
bash ~/gnome-themes/install-requirements-debian

else 
    echo "File not downloaded! Is git installed?"
    echo "exiting..."
    exit 1
fi

}
backupThemes
makeFolder
