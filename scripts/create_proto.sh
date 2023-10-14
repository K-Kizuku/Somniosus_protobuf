#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

BASE_DIR=$1

# Create base directory
mkdir -p "twitter/$BASE_DIR"
cd "twitter/$BASE_DIR"

mkdir resources
mkdir rpc
touch resources/.gitkeep
touch rpc/.gitkeep
touch $1.proto

