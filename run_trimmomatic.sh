#!/bin/bash

#SBATCH -J run-fastqc
#SBATCH -o out.o%j
#SBATCH -e err.e%j
#SBATCH -n 4
#SBATCH --mem=8G

#$1 and $2 are sp-names or other descriptors of qc'd seqence files
#this script trims adapters, cuts off bases at beginning and end if above threshold, and only keeps sequences longer than 36 bases
#for more information see http://www.usadellab.org/cms/?page=trimmomatic
#can also be run inside trinity

java -jar /scratch/sunruh/software/Trimmomatic-0.33/trimmomatic-0.33.jar PE -phred33 -threads 4 $1.fastq.gz $2.fastq.gz $1_P1.fastq.gz $1_U1.fastq.gz $2_P2.fastq.gz $2_U2.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 MINLEN:36




