#!/bin/bash
#SBATCH --job-name=test
#SBATCH --output=test-%j.out
#SBATCH --ntasks=1
#SBATCH --time=00:10:00
#SBATCH --mem-per-cpu=5000
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=END,FAIL,TIME_LIMIT_80
#SBATCH --mail-user=rosie.eaves@univ.ox.ac.uk
#SBATCH -p priority-ocean
# maybe even 400 or 150 for mempercpu

# Load required modules
module purge
module load otheros/generic-arc
module load intel-compilers/2013
module load hdf5/1.8.14__intel-2013
module load intel-mpi/2013
module load netcdf/4.2__intel-2013
export CPP=''

mpirun -np 16 ./mitgcmuv

