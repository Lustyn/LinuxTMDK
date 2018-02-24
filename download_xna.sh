#!/usr/bin/env bash

# XNA
mkdir -p bin/XNA
wget "https://github.com/DDReaper/XNAGameStudio/raw/master/MXA%20Studio/XNA%20Game%20Studio%204.0.6%20(2017).zip" -O XNA.zip
unzip XNA.zip -d tmpXNA
cd tmpXNA/"4. XNA Game Studio 4.0 Shared"
7z e "XNA Game Studio Shared.msi"
7z e "product.cab"
for f in *_dll
do
        fc="$(echo $f | sed -e 's/_/./g')"
        cp "$f" "../../bin/XNA/$fc"
done
for f in *_xml
do
        fc="$(echo $f | sed -e 's/_/./g')"
        cp "$f" "../../bin/XNA/$fc"
done
cd ../..
rm -rf bin/XNA/XnaMediaHelper.dll tmpXNA XNA.zip
