#!/bin/bash
#SBATCH --job-name=htseq2.SBATCH --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=jm3335@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G

module load anaconda3
source activate htseq

#- Set variables ---------------------------------------------------------#
htseq=/home/jm3335/.conda/envs/htseq/bin/htseq-count
bam=/home/jm3335/WTB2.srt.bam
ref=/home/jm3335/GCF_000182965.3_ASM18296v3_genomic.gtf
output=WTB2_htseqCount.txt

#- RUN htseq-count ---------------------------------------------------#

htseq -f bam -r pos -s no -t exon  -i gene_id $bam $ref > $output
