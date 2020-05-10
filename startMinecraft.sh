#!/bin/bash

echo "Starting Minecraft..."

start () {
    cd /home/$USER/Documents
    find -L  -type f
    java -jar $1
}