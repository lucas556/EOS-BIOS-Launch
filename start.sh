#!/bin/bash

NODEOSBINDIR="/home/eos-dawn-v4.2.0/eos/build/programs/nodeos"
DATADIR="/opt/EOS-Boot-Steps-dawn4"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

$NODEOSBINDIR/nodeos --data-dir $DATADIR --config-dir $DATADIR/config "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
