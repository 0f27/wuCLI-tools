@echo off
name %1 | perl -pe "s/\w+\t(\w+) (\w+)/$1\.$2\@novartis.com/;s/\s//i"
@echo on
