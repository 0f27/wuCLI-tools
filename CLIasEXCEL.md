# Using shell as excel. CLI vs ms-excel. Cookbook

## Why?

- it is easier
- it is faster
- it is faster!!

## Requirements:

- Anaconda: https://www.continuum.io/downloads
- bash/zsh: most modern linux distributions already has it. You can use gitportable for windows (https://github.com/sheabunge/GitPortable/blob/master/README.md)
- gawk: https://www.gnu.org/software/gawk/
- csvkit: ```conda install csvkit``` or ```pip install csvkit```
- data-science-at-the-command-line tools: ```git clone https://github.com/jeroenjanssens/data-science-at-the-command-line```

*all requirements can be met on windows without admin rights ;)

### Convert xls/xlsx to csv

```bash
in2csv file.xls* > file.csv
```

or

```bash
in2csv -f xls --sheet 'sheetname' file.xls > file.csv
```

## Common scrabbing operations

### adding header

```bash
< file.csv header -a '1stColumnName,2dColumnName,3dColumnName' > file1.csv
mv file1.csv file.csv
```

### removing header

```bash
< file.csv header -d > file1.csv
mv file1.csv file.csv
```

### replacing header

in general

```bash
< file.csv header -r '1stColumnName,2dColumnName,3dColumnName' > file1.csv
mv file1.csv file.csv
```

using regexps
```bash
< file.csv header -r "$( < file.csv head -n 1 | sed 's/what/to/g')" > file1.csv
mv file1.csv file.csv
```

### Column cut/reordering

```bash
< inputfile.csv csvcut -c 1,3,2,4-8 > outputfile.csv
```

```bash
< inputfile.csv csvcut -c 3-5,1 | body sort | body uniq > outputfile.csv
```

### removing first 3 lines

```bash
< file.csv tail -n +4 > 1
mv 1 file.csv
```

### removing last 2 lines

```bash
< file.csv head -n -2 > 1
mv 1 file.csv
```

### add column with row numbers

```bash
< file.csv awk -F, 'BEGIN {OFS=","} {print x+=1, $_}' > file1.csv
mv file1.csv file.csv
```

### creating vocabulary

from columns 4 and 7

```bash
< file.csv csvcut -c4,7 | body sort | body uniq > vok.csv
```

creating vocabulary of states and towns using large sales-out file as input

```bash
< sales.csv csvcut -c 'State,Town' | body sort | body uniq > stateVStown.csv
```

### vlookup

```bash
csvjoin --left -c 'column_name' file.csv vocabulary.csv > result.csv
```

## Arithmetic

### sum columns

```bash
< file.csv awk -F, '{print $1,$2,$1+$2}'
```

### multiplication

```bash
< file.csv awk -F, '{print $1,$2,$1*$2}'
```

### division

```bash
< file.csv awk -F, '{print $1,$2,$1/$2}'
```

### power

```bash
< file.csv awk -F, '{print $1,$2,$1**$2}'
```

### more complex formulas

```bash
< file.csv awk -F, '{print $1,$2,$1*3+($1/$2)**2}'
```

### column 2 total

```bash
< file.csv awk -F, '{x+=$2} END {print "total: "x}'
```

### counting unique values from the column 'last_name'
< file.csv csvcut -c 'last_name' | body sort | body uniq | body wc -l

## getting info

### counting lines

```bash
< file.csv wc -l
```

### view header (column names)

```bash
< file.csv csvcut -n
```
or

```bash
< file.csv head -n 1 | sed -r 's/(\"[^\",]+), ?([^\"]+\")/\1 \2/g; s/,/\n/g'| awk 'BEGIN {OFS="\t"} {print x+=1, $_}'
```

### Analising columns

```bash
< file.csv csvstat
```

## Encoding

### view

```bash
file file.csv
```

### change

```bash
< cp866-encoded_file.csv iconv -f CP866 -t UTF-8 > utf8-encoded_file.csv
```