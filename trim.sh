#!/bin/bash

java -jar /scratch/sunruh/software/Trimmomatic-0.33/trimmomatic-0.33.jar PE -phred33 $2 $3 $1_P1.fastq.gz $1_U1.fastq.gz $1_P2.fastq.gz $1_U2.fastq.gz ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 LEADING:10 TRAILING:10 MINLEN:50
