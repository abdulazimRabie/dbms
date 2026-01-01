#!/bin/bash

db_path=$1

# read db name
# check that it is existed
while true; do
    read -r -p "Database name to drop : " db_name
    if ../utils/valid_db_name.sh "$db_name" && ../utils/is_exist_db.sh "$db_path" "$db_name"; then
        # drop it
        echo "[INFO] Dropping Database ($db_name) .... "
        rm -r "$db_path/$db_name"
        break
    fi
done
