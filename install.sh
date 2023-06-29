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
curl -O -s https://raw.githubusercontent.com/Alann07AS/web_translation_js/main/src/web_translation.js

cd ..
mkdir -p translations
cd translations
curl -O -s https://raw.githubusercontent.com/Alann07AS/web_translation_js/main/example/translations/en.json

cd ../..

curl -O -s https://raw.githubusercontent.com/Alann07AS/web_translation_js/main/README.md
curl -s https://raw.githubusercontent.com/Alann07AS/web_translation_js/main/example
cd example
cp ../README.md ./
cd js
cp ../../static/js/web_translation.js ./

cd ../../..
