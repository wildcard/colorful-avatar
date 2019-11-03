#!/usr/bin/env bash

echo "Brands colors"

find colors/* -type f -print0 | xargs -0 -I % sh -c 'echo $(basename %) $(cat %)' | tee /tmp/brands-colors

echo

awk '{system( "./create-brand-avatar.sh " "\"" $2 "\"  " $1)}' /tmp/brands-colors
