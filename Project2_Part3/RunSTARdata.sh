#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1
#SBATCH --job-name=STAR                   # optional: job name
#SBATCH --time=24:00:00


/usr/bin/time -v pixi run STAR --runMode genomeGenerate \
    --runThreadN 8 \
    --genomeDir campylomormyrus.STAR_2.7.11b \
    --genomeFastaFiles campylomormyrus.fasta \
    --sjdbGTFfile campylomormyrus.gtf