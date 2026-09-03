#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1
#SBATCH --job-name=fastqc               # optional: job name
#SBATCH --time=24:00:00

/usr/bin/time -v pixi run fastqc SRR25630300*.fastq.gz
/usr/bin/time -v pixi run fastqc SRR25630378*.fastq.gz