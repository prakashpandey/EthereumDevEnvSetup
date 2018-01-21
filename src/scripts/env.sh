#!/usr/bin/env bash

printf "\n\nSetting up environments variables...\n"
export ETHEREUM_HOME=loc=$(pwd)/src/tools
cd $ETHEREUM_HOME

#Geth
export GETH_HOME=$ETHEREUM_HOME/geth

#Wallet setup
export ETHEREUM_WALLET_HOME=$ETHEREUM_HOME/Ethereum-Wallet/linux-unpacked

#Project home directory
export PROJECT_HOME=$ETHEREUM_HOME/Project

#Data related to ethereum network
export ETHEREUM_DATA_DIR=$PROJECT_HOME/chaindata

#IPC path, used by mist to get connection with geth
export IPC_PATH=~/.ethereum/geth.ipc

printf "\nExported ETHEREUM_HOME : $ETHEREUM_HOME"
printf "\nExported GETH_HOME : $GETH_HOME"
printf "\nExported ETHEREUM_WALLET_HOME : $ETHEREUM_WALLET_HOME"
printf "\nExported PROJECT_HOME : $ETHEREUM_HOME"
printf "\nExported ETHEREUM_DATA_DIR : $ETHEREUM_DATA_DIR"
printf "\nExported IPC_PATH : $IPC_PATH"
printf "\n"

