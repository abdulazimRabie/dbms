#!/bin/bash
db_path=$1
db_name=${2,,}

if [[ -d "$db_path/$db_name" ]]; then
    echo "[INFO]: There is database with name $db_name"
    exit 0
fi

echo "[INFO]: No Database With Name $db_name"
exit 1
