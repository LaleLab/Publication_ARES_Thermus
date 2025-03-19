#!/bin/bash
for fn in thermo_rnaseq/SRR103851{2..7};
do
samp=`basename ${fn}`
echo "Processing sample ${samp}"
salmon quant -i thermo1_index -l A \
         -r ${fn}.fastq.gz \
         --seqBias --gcBias --posBias \
         -p 8 --validateMappings -o quants1/${samp}_quant
done

