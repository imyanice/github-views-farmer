#!/bin/bash

COUNTER=0
read -p "How many views do you want to get ? " NUMBER_VIEWS
read -p "What is the url of the counter ? (GitHub camo works fine): " C_URL

printf "%60s" " " | tr ' ' '-'
echo "" 
echo "Farming $NUMBER_VIEWS views on url $C_URL"
printf "%60s" " " | tr ' ' '-' 
echo ""

while true; do
  [[ $COUNTER -eq $NUMBER_VIEWS ]] && echo "Number of views reached, exiting..." && exit
  HUMAN_COUNTER=$((COUNTER+1))
  echo "Farming the $HUMAN_COUNTER st/nd/th view..."
  wget -q "$C_URL"
  ((COUNTER++))
  printf "%60s" " " | tr ' ' '-'
  echo "" 
done