#!/bin/bash

# param 1 : table name
# param 2 : database path
table_name="students"  ## $1
db_path="/home/abdulazim/DATABASES/abdo/" ## $2

# scan meta file to
pk_column=$(awk -F : '{if ($3 == "PK") {print $1}}' "${db_path}/${table_name}.meta");
pk_column_no=$(awk -F : '{if ($3 == "PK") {print NR}}' "${db_path}/${table_name}.meta");

read -p "Enter ${pk_column} value : " pk_value

record=$(awk -v pkn="$pk_column_no" -v pkv="$pk_value" -F : '{if ($pkn == pkv) {print $0}}' "$db_path/$table_name.data")

if [[ -z "$record" ]]; then
	echo "No ${pk_column} with value ${pk_value}"
	else
	echo "$record"
fi
