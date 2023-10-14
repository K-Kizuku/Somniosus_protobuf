#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <directory_name>"
    exit 1
fi

BASE_DIR=$1

# Create base directory
mkdir -p "proto/$BASE_DIR"
cd "proto/$BASE_DIR"

mkdir resources
mkdir rpc
touch resources/.gitkeep
touch rpc/.gitkeep
touch $1.proto

