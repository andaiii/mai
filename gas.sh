#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xa15fB37014260BBB35487292b7fe7F522F15388B
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-nano

cd "$(dirname "$0")"

chmod +x ./nanominer && ./cmdline_launcher.sh -algo ethash -pool1 $POOL -wallet $WALLET -coin eth -rigName $WORKER -noLog true $@
