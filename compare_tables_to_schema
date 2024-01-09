#!/bin/bash
#list of informix tables
table_list=

#def file of database
schema_list=

#output file
sortedfile_without_dupes=

for table_name in $(cat "$table_list"); do 
    grep -o "$table_name" "$schema_list" 
done > $sortedfile

#remove dupes
sort -u > "$sortedfile_without_dupes"

#clean up
rm sortedfile
