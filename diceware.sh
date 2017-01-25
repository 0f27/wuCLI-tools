

for i in {1..7}; do curl -s http://world.std.com/~reinhold/diceware.wordlist.asc | awk '/'"$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]$[ ( $RANDOM % 6 ) +1 ]"'/ {print $_}'; done