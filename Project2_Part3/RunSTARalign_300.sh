#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --cpus-per-task=8                 # optional: number of cpus, default is 1
#SBATCH --job-name=STARalign              # optional: job name
#SBATCH --time=24:00:00

R1=/projects/bgmp/rfrerich/bioinfo/Bi623/Projects/Project_2/Project2_QAA/filtered/SRR25630300_1_filtered_PE.fastq.gz
R2=/projects/bgmp/rfrerich/bioinfo/Bi623/Projects/Project_2/Project2_QAA/filtered/SRR25630300_2_filtered_PE.fastq.gz

/usr/bin/time -v pixi run STAR --runThreadN 8 --runMode alignReads \
 --outFilterMultimapNmax 3 \
 --outSAMunmapped Within KeepPairs \
 --alignIntronMax 1000000 --alignMatesGapMax 1000000 \
 --readFilesCommand zcat \
 --readFilesIn $R1 $R2\
 --genomeDir campylomormyrus.STAR_2.7.11b \
 --outFileNamePrefix campy_300_

 