#!/bin/bash
for fn in ecoli_rnaseq/SRR109956{19..21};
do
samp=`basename ${fn}`
echo "Processing sample ${samp}"
salmon quant -i ecoli_index -l A \
         -1 "${fn}_1.fastq.gz" \
         -2 "${fn}_2.fastq.gz" \
         --seqBias --gcBias --posBias \
         -p 8 --validateMappings -o ecoli_quants/${samp}_quant
done

