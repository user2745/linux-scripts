#File(s) Backup Script
#Created w/ functional programming style

saveThemes() 
{
    #Saves current themes folder
    cd ~/
    counter=$[counter+1]
    FILENAME=$(THEMES_SNAPSHOT$counter)

    zip -rv oldThemes.zip ~/.themes/
}

saveThemes()