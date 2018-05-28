#!/bin/bash

NODEOSBINDIR="/home/eos-dawn-v4.2.0/eos/build/programs"
DATADIR="/opt/EOS-Boot-Steps-dawn4/Wallet"
WALLET_HOST="127.0.0.1"
WALLET_POSRT="3000"


$DATADIR/stop_wallet.sh
$NODEOSBINDIR/keosd/keosd --data-dir $DATADIR --http-server-address $WALLET_HOST:$WALLET_POSRT $@ & echo $! > $DATADIR/wallet.pid
