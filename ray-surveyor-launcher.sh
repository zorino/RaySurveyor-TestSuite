#!/bin/bash

if [ -z "$1" ]
then
    echo "Need a config file !"
    echo "$ launch-surveyor.sh <config> [Threads]"
    exit 0
fi

threads=2
if [ ! -z "$2" ]
then
    threads=$2
    exit 0
fi

mpiexec -n $threads ./Ray $1
