#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1
#SBATCH --job-name=agat              # optional: job name
#SBATCH --time=24:00:00

/usr/bin/time -v pixi run agat_convert_sp_gff2gtf.pl --gff campylomormyrus.gff -o campylomormyrus.gtf