#!/bin/bash
DB_HOME="$HOME/DATABASES"
databases=$(ls "$DB_HOME")

# Read db name from user
# Valid ?
# Is there any db with this name ?
while true; do
    read -p "Database name : " db_name
    ../utils/valid_db_name.sh $db_name && !(../utils/is_exist_db.sh $db_name) && break
done

# Create folder in DB_HOME/name
echo "[INFO]: This is a valid name, and no database with this name"
mkdir -p "$DB_HOME/${db_name,,}"

./main.sh