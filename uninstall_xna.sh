#!/usr/bin/env bash
cd bin/XNA
for f in *.dll
do
	sudo gacutil -u $(echo "$f" | sed -e "s/.dll//g")
done
cd ../..
