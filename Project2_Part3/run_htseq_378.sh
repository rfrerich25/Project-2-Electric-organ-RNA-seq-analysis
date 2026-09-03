#!/bin/bash

#SBATCH --account=bgmp                    # REQUIRED: which account to use
#SBATCH --partition=bgmp                  # REQUIRED: which partition to use
#SBATCH --job-name=htseq                   # optional: job name
#SBATCH --time=24:00:00

/usr/bin/time -v pixi run htseq-count -i Parent --stranded=yes campy_378_Aligned.out.sam campylomormyrus.gff > campy_378_count_stranded.txt
/usr/bin/time -v pixi run htseq-count -i Parent --stranded=reverse campy_378_Aligned.out.sam campylomormyrus.gff > campy_378_count_rev.txt