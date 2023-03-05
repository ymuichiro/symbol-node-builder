#!/bin/bash

cp ~/target/nodes/node/data/harvesters.dat ~/backup/harvesters.dat
cp ~/target/preset.yml ~/backup/preset.yml 
cp ~/target/addresses.yml ~/backup/addresses.yml

echo "-------------------------"
echo "backup completed!"
echo "~/backup/harvesters.dat"
echo "~/backup/preset.yml"
echo "~/backup/addresses.yml"