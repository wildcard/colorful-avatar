#!/usr/bin/env bash

color=$1
brand=$2
public_dir=${3:-'public/'}
output="${public_dir}${brand}.png"

echo "$brand"

echo

convert avatar-2018-transparent.png -background $color -alpha background -alpha off $output

echo "output: $output"
