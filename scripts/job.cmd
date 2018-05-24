#!/bin/bash

#SBATCH -o /home/hpc/t7341/ga69jux3/projects/HeatForOMP/build/job.out
#SBATCH -D /home/hpc/t7341/ga69jux3/projects/HeatForOMP/build/

#SBATCH -J LIKWID
#SBATCH --get-user-env
#SBATCH --clusters=mpp2
#SBATCH --ntasks=1
#SBATCH --mail-type=end
#SBATCH --mail-user=ga69jux@mytum.de
#SBATCH --export=NONE
#SBATCH --time=00:05:00

# LOAD MODULES
source scripts/loadmodules.sh

# RUN PROGRMAMM
likwid-perfctr -f -C 0 -g MEM       -m ./heat_2 test.dat
likwid-perfctr -f -C 0 -g FLOPS_AVX -m ./heat_2 test.dat
likwid-perfctr -f -C 0 -g MEM       -m ./heat_3 test.dat
likwid-perfctr -f -C 0 -g FLOPS_AVX -m ./heat_3 test.dat