-k 31
-output surveys-results/RaySurveyor_2in-1out
-run-surveyor
-write-kmer-matrix
-read-sample-graph test1 ./data/kmers.txt
-read-sample-assembly test2 ./data/test2.fasta
-filter-in-graph test3 ./data/kmers3.txt
-filter-out-assembly test4 ./data/kmers4.txt
-filter-in-graph test5 ./data/kmers5.txt

