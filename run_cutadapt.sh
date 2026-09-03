#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --job-name=cutadapt               # optional: job name
#SBATCH --cpus-per-task=8
#SBATCH --time=24:00:00

/usr/bin/time -v pixi run cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -o ../SRR25630300_1_trimmed.fastq.gz ../SRR25630300_1.fastq.gz
/usr/bin/time -v pixi run cutadapt -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o ../SRR25630300_2_trimmed.fastq.gz ../SRR25630300_2.fastq.gz
/usr/bin/time -v pixi run cutadapt -a AGATCGGAAGAGCACACGTCTGAACTCCAGTCA -o ../SRR25630378_1_trimmed.fastq.gz ../SRR25630378_1.fastq.gz
/usr/bin/time -v pixi run cutadapt -a AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT -o ../SRR25630378_2_trimmed.fastq.gz ../SRR25630378_2.fastq.gz