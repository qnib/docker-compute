#!/bin/sh
#SBATCH --nodes=3                   # Use one node
#SBATCH --ntasks=3                    # Run on a single CPU
#SBATCH --time=00:01:00               # Time limit hrs:min:sec

/usr/lib64/openmpi/bin/mpirun /chome/ring
