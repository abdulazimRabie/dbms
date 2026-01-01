#!/bin/bash
db_path=$1

# Read db name from user
# Valid ?
# Is there any db with this name ?
while true; do
    read -r -p "Database name : " db_name
    ../utils/valid_db_name.sh "$db_name" && !(../utils/is_exist_db.sh "$db_path" "$db_name") && break
done

# Create folder in DB_HOME/name
echo "[INFO]: This is a valid name, and no database with this name"
mkdir -p "$db_path/${db_name,,}"

./main.sh