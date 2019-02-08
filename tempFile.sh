#!/bin/sh

#Is compatible with shell

rmTemp()
{
    echo "Removing 'Temporary' folder"
    cd ~/Downloads/
    rm -rf ./temp/
}

mkTemp()
{
    echo "Creating 'Temporary' folder"
    cd ~/Downloads
    mkdir ./temp/
}


#Execution zone
echo "Launching script..."
rmTemp
mkTemp
echo "All Done"


#TODO
#Error Handling