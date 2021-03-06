#!/bin/bash

#for i in {2 1.1 1.01 1.001 1.0001 1.00001 1.000001 1.0000001 1.00000001 1.000000001 1.0000000001 1.00000000001 0.5}
for i in {0..20}
do
  cat > pbs.script.rosenbrockpvm.$i <<EOF
#!/bin/bash

#PBS -l nodes=1:ppn=8,walltime=48:00:00
#PBS -m abe
#PBS -M weh227@nyu.edu
#PBS -N rosenbrockHD$((i))

module load gcc/4.7.3

cd /scratch/weh227/rosenbrock/
p=$(bc -l <<< "1+10 ^(-$((i)))")
for m in 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
   echo \$m 10000 \$p
   ~/Documents/thesis/lbfgsfortran/./rosenbrockp \$m 10000 \$p >> outputrosenbrockpvm$((i)).txt
done

exit 0;

EOF
done
