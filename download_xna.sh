#!/usr/bin/env bash

# XNA
mkdir -p bin/XNA
wget "https://github.com/DDReaper/XNAGameStudio/raw/master/MXA%20Studio/XNA%20Game%20Studio%204.0.6%20(2017).zip" -O XNA.zip
unzip XNA.zip -d tmpXNA
cd tmpXNA/"2. XNA Framework 4.0 Redistribution"
7z e "XNA Framework 4.0 Redist.msi"
for f in *_dll_GAC
do
	fc="$(echo $f | sed -e 's/_GAC//g' -e 's/_/./g')"
	cp "$f" "../../bin/XNA/$fc"
done
cd ../..
rm -rf tmpXNA XNA.zip
