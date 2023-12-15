#!/bin/bash

FRUITS=("Apple" "Banana" "Mango" "Grapes")
echo "First fruis is:${FRUITS[0]}"
echo "second fruis is:${FRUITS[1]}"
echo "Third fruis is:${FRUITS[2]}"
echo "fourth fruis is:${FRUITS[3]}"
echo "All fruis are:${FRUITS[@]}"

echo "${FRUITS[#]}"
