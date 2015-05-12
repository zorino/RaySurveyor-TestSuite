#!/bin/bash

if [ -z "$1" ]
then
    echo "Need a config file !"
    echo "$ ray-surveyor-test.sh <config> <output to compare with> [Threads] [--diff]"
    exit 0
fi

threads=2
if [ ! -z "$2" ]
then
    threads=$2
fi

test_diff=0
if [[ ! -z "$3" && $3 == "--diff" ]]
then
    test_diff=1
fi

mpiexec -n $threads ./Ray $1

if [ $test_diff -eq 1 ]
then
    out=$(basename ${1%.conf})
    
    echo -e "\n\n"
    echo "Let's compare the output for $out"

    # Difference between matrix
    diff surveys-fix/$out/Surveyor/SimilarityMatrix.tsv surveys-results/$out/Surveyor/SimilarityMatrix.tsv
    diff surveys-fix/$out/Surveyor/DistanceMatrix.tsv surveys-results/$out/Surveyor/DistanceMatrix.tsv
    
fi

