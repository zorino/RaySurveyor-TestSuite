#!/bin/bash

if [ -z "$1" ]
then
    echo "Need a config file !"
    echo "$ ray-surveyor-test.sh <config> <output to compare with> [Threads]"
    exit 0
fi

threads=2
if [ ! -z "$2" ]
then
    threads=$2
    exit 0
fi

mpiexec -n $threads ./Ray $1 $threads

out=${1%.conf}
echo "Let's compare the output for $out\n" 

diff surveys
# Diff between 
