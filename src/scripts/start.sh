#!/usr/bin/env bash

echo "Starting Ethereum tools geth and mist..."

#To load up setup environment variables
source src/scripts/env.sh

sleep 2
printf "\n\n.................................................................................."

#Start geth
$GETH_HOME/geth --datadir=$ETHEREUM_DATA_DIR --ipcpath $IPC_PATH &
GETH_PID=$!
printf "\nStarted geth (pid : $GETH_PID)"
#Append process id to file process_id
echo "Started geth (pid : $GETH_PID) $(date +%H:%M:%S)" >> process_id.txt

# Waits 4 seconds so that mist will find geth up and running.
sleep 4

printf "\n\n"

#Start Ethereum wallet in mist mode
printf "Starting ethereum wallet in mist mode considering ipc path at $IPC_PATH."
$ETHEREUM_WALLET/ethereumwallet --mode mist &
MIST_PID=$!
printf "\nStarted mist (pid : $MIST_PID)"
#Append process id to file process_id
echo "Started mist (pid : $MIST_PID) $(date +%H:%M:%S)" >> process_id.txt