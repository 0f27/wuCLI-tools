@echo off
net user %1 /domain | find /i "name" | perl -pe "s/^\w+ \w+\s+//g; s/(\w+),\s(\w+)(\s+\(Ext\))?/$2 $1/; s/(\d)\n/$1\t/"
@echo on