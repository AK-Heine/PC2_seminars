#! /bin/sh
#PBS -N PtSe2_1T_bulk
#PBS -l walltime=72:00:00,mem=63GB,nodes=4:ppn=20
module ()
   eval `/usr/bin/modulecmd bash $*`

module load aims

export OMP_NUM_THREADS=1
cd $PBS_O_WORKDIR

mpirun -np 80 bash -c "ulimit -s unlimited && aims.171221_1.scalapack.mpi.x" < /dev/null > PtSe2_1T_bulk.out
