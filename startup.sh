#!/bin/bash

if [ -z "$SSLEDGE_PASSWORD" ]; then
    echo >&2 'error: ssledge password option is not specified '
    echo >&2 '  You need to specify SSLEDGE_PASSWORD'
    exit 1
else
    FILES=$(ls /ssledge/config/http)
    for file in $FILES
    do
        sed -i "s/SSLEDGE_PASSWORD/${SSLEDGE_PASSWORD}/" /ssledge/config/http/${file}
    done
fi

/ssledge/run.sh
tail -f /dev/null
