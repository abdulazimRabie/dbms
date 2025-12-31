#!/bin/bash
DB_HOME="$HOME/DATABASES"
db_name=${1,,}

if [[ -d "$DB_HOME/$db_name" ]]; then
    echo "[INFO]: There is database with name $db_name"
    exit 0
fi

echo "[INFO]: No atabase with name $db_name"
exit 1