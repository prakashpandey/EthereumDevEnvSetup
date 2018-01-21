#!/usr/bin/env bash

#To load up setup environment variables
source src/scripts/env.sh

printf "\n\nInitializing genesis block..."
PROJECT_HOME=$ETHEREUM_HOME/Project
if [ ! -d $PROJECT_HOME ]; then
 mkdir $PROJECT_HOME
 mkdir $PROJECT_HOME/chaindata
 printf "\nCreated directory $PROJECT_HOME/chaindata which will contain geth and wallet data."
 cp ../resources/genesis.json $PROJECT_HOME/genesis.json
 printf "\nCopied genesis file from $ETHEREUM_HOME to $PROJECT_HOME."
fi

printf "\nDo you want to initialize genesis file. y/n"
read init_genesis_usr_input
if [ "$init_genesis_usr_input" == "y" ]; then
   echo "Initializing genesis block"
   $GETH_HOME/geth --datadir=$ETHEREUM_DATA_DIR --ipcpath $IPC_PATH init $PROJECT_HOME/genesis.json
    sleep 2
    echo "Genesis block initialized successfully."
    else
        echo "Not initializing genesis block. Good bye!"
fi

