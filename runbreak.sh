#!/bin/bash

for p in 2 1.1 1.01 1.001 1.0001 1.00001 1.000001 1.0000001 1.00000001 1.000000001 1.0000000001 1.00000000001
do
   echo 10 10000 $p
   ~/Documents/thesis/lbfgsfortran/./rosenbrockp 10 10000 $p >> outputBreak/breakrosenbrockweak$p.txt
   ~/Documents/thesis/lbfgsfortran/./rosenbrockStrongp 10 10000 $p >> outputBreak/breakrosenbrockStrong$p.txt
done

exit 0;

