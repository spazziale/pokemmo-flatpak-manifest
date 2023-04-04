#!/bin/sh
cd $XDG_DATA_HOME
if [ ! -d "PokeMMO-Client" ]
then

    (   
        curl -L -#  "https://dl.pokemmo.com/download/PokeMMO-Client.zip?r=2221" -o PokeMMO-Client.zip
        echo "50" ; 
        echo "# Extracting PokeMMO-Client" ;
        unzip PokeMMO-Client.zip -d PokeMMO-Client
        rm -rf PokeMMO-Client.zip
        cd "PokeMMO-Client"
        chmod +x PokeMMO.sh
        echo "100" ; 
    ) |
    zenity --progress \
    --title="PokeMMO" \
    --text="Downloading client." \
    --percentage=0 \
    --auto-close \
    --auto-kill

    (( $? != 0 )) && zenity --error --text="Error while downloading the client."
    
fi
cd PokeMMO-Client
source $XDG_DATA_HOME"/PokeMMO-Client/PokeMMO.sh"