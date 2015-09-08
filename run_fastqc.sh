
#!/bin/bash

#SBATCH -J run-fastqc
#SBATCH -o out.o%j
#SBATCH -e err.e%j
#SBATCH -n 4
#SBATCH --mem=8G

for file in *.fastq.gz;
        do sbatch --wrap="fastqc -o fastqc_output/ --noextract ${file}";
done;
