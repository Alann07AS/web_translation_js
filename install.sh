#!/bin/bash

if [ ! -z "$1" ]; then
    echo "Init project name $1"
    mkdir -p "$1"
    cd "$1"
fi

mkdir -p static
cd static
mkdir -p js
cd js
curl -O -s https://raw.githubusercontent.com/AlannAS07/translation-framework/main/src/translationFramework.js

cd ..
mkdir -p translations
cd translations
curl -O -s https://raw.githubusercontent.com/AlannAS07/translation-framework/main/src/translationFramework.js
