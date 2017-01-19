awk -F# 'BEGIN {OFS="\t"; print "Category\tUniqName"} {if ($2!="") {categ = $2} else {print categ,$1}}'
