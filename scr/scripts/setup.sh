#!/usr/bin/env bash
################################################################################################################################################
#@Author Prakash Pandey
#@Email : pcpandey@mail.com
#@Github : github.com/prakashpandey

#About script :
#The following script download geth and ethereum wallet required for building application based on ethereum solidity.
#It also exports $GETH and $ETHEREUM_WALLET environment variables
################################################################################################################################################

echo "Setting up developement environment for Ethereum developement."
echo "\nNote this script is for Debian 64 bit operating systems."
cd ~

ETHEREUM_HOME=~/BlockChain/AutomatedScripts/Ethereum
if [ ! -d "$ETHEREUM_HOME" ]; then
 mkdir $ETHEREUM_HOME
 echo "\nCreated directory Ethereum in user home directory."
fi

cd $ETHEREUM_HOME

#geth setup
echo "\n\nDownloading geth...\n"
wget https://gethstore.blob.core.windows.net/builds/geth-linux-amd64-1.7.3-4bb3c89d.tar.gz
tar -xvf geth-linux-amd64-1.7.3-4bb3c89d.tar.gz
mv geth-linux-amd64-1.7.3-4bb3c89d geth
GETH=$ETHEREUM_HOME/geth
export $GETH
echo "\nGeth is installed at $GETH"

#Wallet setup
echo "\n\nDownloading ethereum-wallet...\n"
wget https://github.com/ethereum/mist/releases/download/v0.9.3/Ethereum-Wallet-linux64-0-9-3.zip
unzip Ethereum-Wallet-linux64-0-9-3.zip -d Ethereum-Wallet
echo "\nEthereum wallet is installed at $ETHEREUM_WALLET_HOME"
