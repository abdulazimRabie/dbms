#!/bin/bash
records=$1
table_name=$2
db_path=$3

max_count=$(wc -l "$db_path/$table_name.data" | cut -d ' ' -f 1)
if [[ "$records" -lt 1 ]]; then
	records="$max_count"
fi

head -"$records" "$db_path/$table_name.data"
