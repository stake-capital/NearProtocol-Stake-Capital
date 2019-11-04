#!/bin/bash

# Upgrade the system and install go
sudo apt update
sudo apt upgrade -y
apt install -y git binutils-dev libcurl4-openssl-dev zlib1g-dev libdw-dev libiberty-dev cmake gcc g++ python docker.io protobuf-compiler libssl-dev pkg-config
