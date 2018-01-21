# EthereumDevEnvSetup
This repository contains script which will download and install tools required to setup up Ethereum solidity based dApp on your machine.


# Tools installed
- Geth
- Ethereum wallet in mist mode
- Geth miner

All these tools are required for the developement for Ethereum Solidity based dApps.

## Project structure
- src : project source folder.
- src/resources : contains resource files of project.
- src/script : contains project scripts.
- src/tools : geth, ethereum wallet are installed here.

## Prerequisite
- Linux machine
- unzip, tar and wget installed

# How to run

### Download geth, mist and initialize genesis block(One time task)
- git clone `https://github.com/prakashpandey/EthereumDevEnvSetup.git`
- cd EthereumDevEnvSetup
- chmod 777 src/scripts/*
- sh src/scripts/env.sh
- sh src/scripts/setup.sh
- sh src/scripts/init_genesis_block.sh.sh

### Run geth and mist
- cd EthereumDevEnvSetup
- sh src/scripts/start.sh
- Open new terminal, `cd EthereumDevEnvSetup` and `sh src/scripts/miner.sh`

### License
You can use this software for commercial as well as non-commercial purpose/purposes, the way you want and without conditions of any kind.

Please visit [LICENSE.md](LICENSE.md) for more details.

### How to contribute
Please feel free to contribute to this project.

### Contact author
- E-Mail : pcpcndey@mail.com.
- Twitter : [Prakash Pandey](twitter.com/pandaypc)
