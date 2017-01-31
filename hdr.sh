#!/usr/bin/env bash
head -n 1 | sed 's/,/\n/g'| awk 'BEGIN {OFS="\t"} {print x+=1, $_}'
