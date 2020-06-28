#!/usr/bin/env bash

echo "Brands colors"

find colors/* -type f -print0 | xargs -0 -I % sh -c 'echo $(basename %) $(cat %)' | tee /tmp/brands-colors

echo

echo "Index Avatar"
./create-brand-avatar.sh "index" "#000000"
awk '{system( "./create-brand-avatar.sh " "\"" $2 "\"  " $1)}' /tmp/brands-colors
