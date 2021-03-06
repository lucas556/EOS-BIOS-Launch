#!/bin/bash

NODEOSBINDIR="/eos/build/programs/nodeos"
DATADIR="/eos-tool"

$DATADIR/stop.sh
echo -e "Starting Nodeos \n";

$NODEOSBINDIR/nodeos --data-dir $DATADIR --max-irreversible-block-age 9999999 --config-dir $DATADIR/config/ "$@" > $DATADIR/stdout.txt 2> $DATADIR/stderr.txt &  echo $! > $DATADIR/nodeos.pid
