gzip -dc test2.fq.gz |
source-highlight -f esc --lang-def=$PWD/fastq.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/fasta.style -i "$source"
