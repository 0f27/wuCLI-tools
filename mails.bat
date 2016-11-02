@echo off
echo %1 | perl -pe "s/; /\n/g; s/.+<(.+)>/$1/g, s/\"//g"
@echo on