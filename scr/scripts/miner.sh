#!/usr/bin/env bash

#Note: To start miner, geth and mist must be running
#and you should create atleat one account in mist

#To load up setup environment variables
source env.sh

#Start miner
printf "\n\nStarting miner console. Please wait..."
sleep 2
printf "\nPlease press : "
printf "\n1. Start miner"
printf "\n2. Stop miner"
printf "\nAnything - [1, 2]. Enter mannual command"
printf "\nPlease enter your input : "
read user_miner_input

if [ $user_miner_input == 1 ]; then
    $GETH_HOME/geth attach --exec "miner.start(1);"
    elif [ $user_miner_input == 2 ]; then
        $GETH_HOME/geth attach --exec "miner.stop();"
    else
        echo "Please mannually enter your command."
        $GETH_HOME/geth attach
fi