#!/bin/sh
cd /var
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

cd /var/PokeMMO-Client
source "/var/PokeMMO-Client/PokeMMO.sh"