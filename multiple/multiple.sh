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
# change to user directory
old_dir=$(pwd)
cd /scratch/general/nfs1/u6049165/chpc_workflow/simple/

# make the output directory
mkdir -p output

# run your task
echo "Task 1"  >  output/multiple.txt &
echo "Task 2"  >> output/multiple.txt &
echo "Task 3"  >> output/multiple.txt &
echo "Task 4"  >> output/multiple.txt &
echo "Task 5"  >> output/multiple.txt &
echo "Task 6"  >> output/multiple.txt &
echo "Task 7"  >> output/multiple.txt &
echo "Task 8"  >> output/multiple.txt &
echo "Task 9"  >> output/multiple.txt &
echo "Task 10" >> output/multiple.txt &
echo "Task 11" >> output/multiple.txt &
echo "Task 12" >> output/multiple.txt &
echo "Task 13" >> output/multiple.txt &
echo "Task 14" >> output/multiple.txt &
echo "Task 15" >> output/multiple.txt &
echo "Task 16" >> output/multiple.txt &
echo "Task 17" >> output/multiple.txt &
echo "Task 18" >> output/multiple.txt &
echo "Task 19" >> output/multiple.txt &
echo "Task 20" >> output/multiple.txt;

wait;

# move log file
mkdir -p log
mv "${old_dir}/slurm-${SLURM_JOB_ID}.out" "log/slurm-${SLURM_JOB_ID}.out"
