To map sequencing reads to a reference genome, we used the Candida albicans SC5314 genome assembly, which was obtained from the NCBI database (GCF_000182965.3). The reference genome file, in FASTA format, and the accompanying GTF annotation file were downloaded. The sequencing reads were aligned to this reference using Bowtie2, a widely used aligner suitable for mapping short reads to large genomes. Bowtie2 was employed to align the reads to the reference genome, generating output in SAM format. The SAM file contains detailed alignment information, including the position of each read relative to the reference, alignment quality, and associated metadata. The script utilized for the step is titled "bowtie2.sBATCH".

Here is the following output data from bowtie2:
Loading bowtie2/2.5.3
  Loading requirement: bcftools/1.20 samtools/1.20
19476343 reads; of these:
  19476343 (100.00%) were paired; of these:
    940835 (4.83%) aligned concordantly 0 times
    17341774 (89.04%) aligned concordantly exactly 1 time
    1193734 (6.13%) aligned concordantly >1 times
    ----
    940835 pairs aligned concordantly 0 times; of these:
      348454 (37.04%) aligned discordantly 1 time
    ----
    592381 pairs aligned 0 times concordantly or discordantly; of these:
      1184762 mates make up the pairs; of these:
        735765 (62.10%) aligned 0 times
        395227 (33.36%) aligned exactly 1 time
        53770 (4.54%) aligned >1 times
98.11% overall alignment rate


