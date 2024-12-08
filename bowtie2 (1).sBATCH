#!/bin/bash
#SBATCH --job-name=bowtie2.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=jm3335@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

# Load necessary modules
module load bowtie2


# Run bowtie2
bowtie2 \
    -x baseindex \
    -1 WTB2_1.trPE.fq.gz \
    -2 WTB2_2.trPE.fq.gz \
    -S WTB2.sam

