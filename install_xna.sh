#!/usr/bin/env bash
FILES=bin/XNA/*.dll
for f in $FILES
do
	sudo gacutil -i "$f"
done
