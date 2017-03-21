#!/usr/bin/python
# -*- coding: UTF-8 -*-
#
# Combines all first sheets from
# all files in current directory.
# I hope you have only xl files there ;)
#
from datetime import datetime # to add date to new filename
from os import listdir # to list directory
from re import sub # to regexp date from datetime
from xlrd import open_workbook # to open existed
from xlsxwriter import Workbook # to create new

# date in yyyy.mm.dd format to add
# before filename. It is useful for me
d=sub(r'(\d{4})\-(\d{2})\-(\d{2}).+',r'\1.\2.\3',str(datetime.now()))

# creating workbook and worksheet
wb = Workbook(d+' totals.xlsx')
ws = wb.add_worksheet('totals')

# list xl files in directory &
# read-write from-to files sequentially
i = 1 # row
for f in listdir():
    rb = open_workbook(f, on_demand = True)
    rs = rb.sheet_by_index(0)
    for r in range(rs.nrows):
        j = 1 # column
        ws.write(i,0,f)
        for v in rs.row(r):
            ws.write(i,j,v.value)
            j += 1
        i += 1
wb.close()