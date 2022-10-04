#!/bin/bash

echo "-------------------------------------"
echo "Getting the url: $1, 100 times"
echo "-------------------------------------"
for i in {1..100}
do
    echo "Getting the $i views"
    wget -q "$2"
    echo "-------------------------------------"
done