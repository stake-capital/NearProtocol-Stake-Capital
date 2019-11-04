#!/bin/bash

# Install Docker
https://docs.docker.com/install/linux/docker-ce/ubuntu/

# To enable coredump for docker, do (to modify system coredump location to /tmp.): 

`echo '/tmp/core.%t.%e.%p' | sudo tee /proc/sys/kernel/core_pattern`

# Upgrade the system and install go
sudo apt update
sudo apt upgrade -y
apt install -y git binutils-dev libcurl4-openssl-dev zlib1g-dev libdw-dev libiberty-dev cmake gcc g++ python docker.io protobuf-compiler libssl-dev pkg-config


# Install NearProtocol
git clone https://github.com/nearprotocol/nearcore.git
cd nearcore

./scripts/start_testnet.py --nodocker
