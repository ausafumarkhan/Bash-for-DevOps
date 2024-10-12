#!/bin/bash

########################
# Author: Ausaf Umar
# Date created: 12-10-2024
# Last Modified: 12-10-2024
# Description: To count particular alphabet in a word
# Usage: ./letter-count.sh
#########################

read -p "Provide a word: " word
read -p "Provide a character: " character

grep -oi "$character" < <(echo "${word}") | wc -l

