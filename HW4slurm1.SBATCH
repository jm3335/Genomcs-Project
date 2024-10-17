#!/bin/bash
#SBATCH --job-name=HW4slurm1.SBATCH --output=z01.%xt
#SBATCH --mail-type=END,FAIL --mail-user=jm3335@georgetown.edu
#SBATCH --nodes=1 --ntasks=1
#SBATCH --cpus-per-task=1 --time=72:00:00 --mem=4G


# Load necessary modules
shopt -s expand_aliases
module load trimmomatic

# Run Trimmomatic with absolute paths
trimmomatic PE \
/home/jm3335/HW4_input_files/EC-12_R1_001.fastq.gz \
/home/jm3335/HW4_input_files/EC-12_R2_001.fastq.gz \
/home/jm3335/HW4_output_files/EC-12_R1_trmPE.fq.gz /home/jm3335/HW4_output_files/EC-12_R1_trmSE.fq.gz \
/home/jm3335/HW4_output_files/EC-12_R2_trmPE.fq.gz /home/jm3335/HW4_output_files/EC-12_R2_trmSE.fq.gz \
ILLUMINACLIP:/home/jm3335/HW4_input_files/TruSeq3-PE.fa:2:30:10 \
LEADING:10 \
TRAILING:10 \
SLIDINGWINDOW:4:15 \
MINLEN:75

