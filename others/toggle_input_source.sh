#!/bin/sh

SCRIPT_HOME=$(
    cd $(dirname $0)
    pwd
)


COMMAND="${SCRIPT_HOME}/xkbswitch"

if [[ $1 == "en" ]]; then
    $COMMAND -s 2;
elif [[ $1 == "zh" ]]; then
    $COMMAND -s 0;
elif [[ $1 == "ja" ]]; then
    $COMMAND -s 6;
else
    exit 1;
fi
