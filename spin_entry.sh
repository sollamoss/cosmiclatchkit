#!/usr/bin/env bash
set -e
REPO="sollamoss/cosmiclatchkit"
TAG="bright-comet-cosmic-garden"
LIB="maple-merlon.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
