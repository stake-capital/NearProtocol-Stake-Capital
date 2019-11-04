#!/bin/bash

# Install Docker
https://docs.docker.com/install/linux/docker-ce/ubuntu/

# To enable coredump for docker, do (to modify system coredump location to /tmp.): 

`echo '/tmp/core.%t.%e.%p' | sudo tee /proc/sys/kernel/core_pattern`

# Install using Docker instance 

## Run instance 
`sudo ./scripts/start_stakewars.py --init --signer-keys --account-id=b742da24d6d5803b6c5e4f5bf0ff2c0ef1e94f55`

## Validator ID (Also SC Eth address: 0xb742da24d6d5803b6c5e4f5bf0ff2c0ef1e94f55)
`b742da24d6d5803b6c5e4f5bf0ff2c0ef1e94f55`

## Remove 


## Log
docker logs --follow nearcore

## Check Validator info

`sudo apt install httpie`

`http post http://localhost:3030/ jsonrpc=2.0 method=query id=dontcare 'params:=["validators", ""]'`
