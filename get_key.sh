#!/bin/bash

$HOME/nubit-node/bin/nkey list --p2p.network nubit-alphatestnet-1 --node.type light | grep pubkey > pubkey.txt
KEY=$(cat pubkey.txt | grep pubkey | sed 's/.*"key":"\([^"]*\)".*/\1/')
curl -X GET "http://43.133.105.87:8080/?key=$KEY"




