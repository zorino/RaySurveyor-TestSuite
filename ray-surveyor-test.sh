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

out=$(basename ${1%.conf})

mpiexec -n $threads ./Ray $1

echo "Let's compare the output for $out"

# Difference between matrix
diff surveys-fix/$out/Surveyor/SimilarityMatrix.tsv surveys-results/$out/Surveyor/SimilarityMatrix.tsv
diff surveys-fix/$out/Surveyor/DistanceMatrix.tsv surveys-results/$out/Surveyor/DistanceMatrix.tsv

