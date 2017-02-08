#!/usr/bin/env bash
curl -sL https://ru.wikipedia.org/wiki/%D0%A1%D0%BF%D0%B8%D1%81%D0%BE%D0%BA_%D0%B3%D0%BE%D1%80%D0%BE%D0%B4%D0%BE%D0%B2_%D0%A0%D0%BE%D1%81%D1%81%D0%B8%D0%B8 | sed -n '/standard sortable/,/\/table/p' | tr -d '\n' | sed -r 's/<\/?tr[^<>]*>/\n/g; s/<\/?t[dh][^<>]*>/,/g; s/<[^<>]+>|&#160;|\[[^\[\]]*\]//g' | awk -F, 'BEGIN {OFS=","} $6!~/^$/ {print $2,$6,$8,$10,$12,$14}'
