#!/bin/bash

#SBATCH -J Assemble
#SBATCH -e err.%J
#SBATCH -o out.%J
#SBATCH --mem-per-cpu=4G
#SBATCH -n 10
#SBATCH -t 4000

#For fungi, use jaccard_clip option to remove fusion transcripts
#Need to tweak memory requirements for these jobs, they will change with size of files
#$1 and $2 are input files $3 is sp-name that will create sp-name_trinity_out directory for output
#for more information see: http://trinityrnaseq.github.io/

#ulimit -s unlimited
perl /data/pireslab/Asparagales/bin/trinityrnaseq_r20140717/Trinity --seqType fq --JM 40G --left $1 --right $2 --output ./$3_trinity_out --CPU 10 --jaccard_clip
