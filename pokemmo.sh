#!/bin/sh
cd $XDG_DATA_HOME
if [ ! -d "PokeMMO-Client" ]
then
    curl -L "https://dl.pokemmo.com/download/PokeMMO-Client.zip?r=2221" -o PokeMMO-Client.zip
    pwd
    ls
    unzip PokeMMO-Client.zip -d PokeMMO-Client
    rm -rf PokeMMO-Client.zip
    cd "PokeMMO-Client"
    chmod +x PokeMMO.sh
fi

cd PokeMMO-Client
source $XDG_DATA_HOME"/PokeMMO-Client/PokeMMO.sh"