# for bulk TCR/BCR analysis.
run-trust4 \
-1 /media/ning/backup/TCR/fq/GSE210337/SRR20751886_1.fastq.gz \
-2 /media/ning/backup/TCR/fq/GSE210337/SRR20751886_2.fastq.gz \
-t 8 \
-f /data/Apps/TRUST4/hg38_bcrtcr.fa \
--ref /data/Apps/TRUST4/human_IMGT+C.fa \
--repseq \
-o /data/work/TCR-Qiao/test/SRR20751886


# for single cell TCR/BCR analysis.
run-trust4 \
-1 $fq1 \
-2 $fq2 \
-f /data/Apps/TRUST4/hg38_bcrtcr.fa \
--ref /data/Apps/TRUST4/human_IMGT+C.fa \
--read1Range 28 -1 \
--read2Range 0 -1 \
--barcode $fq1 \
--barcodeRange 0 15 + \
--UMI $fq1 \
--umiRange 16 27 + \
--repseq \
--outputReadAssignment \
-o $output
