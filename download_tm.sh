#!/usr/bin/env bash

# Total Miner
mkdir -p bin/TotalMiner
git clone "https://github.com/cmartin99/TotalMinerMods.git" tmpTM
cp tmpTM/Bin/* bin/TotalMiner/
rm -rf tmpTM
