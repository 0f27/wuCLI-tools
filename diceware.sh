#!/usr/bin/env bash
curl -s http://world.std.com/~reinhold/diceware.wordlist.asc > dw.txt ; for i in {1..7}; do < dw.txt awk '/'"$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]"'/ {print $2}'; done; rm dw.txt
