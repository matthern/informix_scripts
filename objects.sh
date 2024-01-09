#!/bin/bash
#objects in and informix and version names out in lowercase :)
#change output/object_list.txt filenames as required.
#m2m

while IFS= read -r object; do
    echo "select obj_file || obj_version from dict_object where obj_name LIKE ('$object')" | dbaccess bms | grep -v expression >> output.txt
done < object_list.txt

sed -i '/^\s*$/d' output.txt

tr '[:upper:]' '[:lower:]' < output.txt > restore_table_list.txt
