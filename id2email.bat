@echo off
name %1 | perl -pe "s/\w+\t(\w+) (\w+)/\L$1\.\L$2\@novartis.com/;s/\s//i"
@echo on
