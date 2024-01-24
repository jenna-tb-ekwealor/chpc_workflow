#!/bin/bash
#SBATCH
#SBATCH --time=00:10:00
#SBATCH --nodes=1
# additional information for allocated clusters
#SBATCH --account=rothfels
#SBATCH --partition=notchpeak
#SBATCH --mail-type=FAIL,BEGIN,END
#
#
# ----------------Modules------------------------- #
#
#
# ----------------Your Commands------------------- #
#

# change to user directory of choice
old_dir=$(pwd)
cd /scratch/general/nfs1/u6049165/chpc_workflow/simple/

# make the output directory
mkdir -p output

# run your code
echo "Hello World" > output/simple.txt

# move log file
mkdir -p log
mv "${old_dir}/slurm-${SLURM_JOB_ID}.out" "log/slurm-${SLURM_JOB_ID}.out"