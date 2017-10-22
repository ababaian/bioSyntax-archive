# bioSyntax
Syntax highlighting for computational biology file formats in Sublime Text 3, gtksourceview / gedit (in progress) and vim (in future).

## Sublime Text 3

## Fasta (.fa; .faa; .fasta;)
A total of 6 formats available:
- [fasta.sublime-syntax](syntax/sublime/fasta.sublime-syntax): Context-dependent; able to detect if fasta file contains nucleotides or amino acids (Recommended).
- [fasta-nt.sublime-syntax](syntax/sublime/fasta-nt.sublime-syntax): for .fa & .fasta files only, specifically for highlighting RNA bases. High-contrast colour scheme with background highlighting.
- [fasta-clustal.sublime-syntax](syntax/sublime/fasta-clustal.sublime-syntax): High-contrast amino acid highlighting.
- [fasta-zappo.sublime-syntax](syntax/sublime/fasta-zappo.sublime-syntax):
- [fasta-taylor.sublime-syntax](syntax/sublime/fasta-taylor.sublime-syntax):
- [fasta-hydro.sublime-syntax](syntax/sublime/fasta-hydro.sublime-syntax): Amino acid highlighting based on hydrophobicity.

## Fastq (.fq; .fastq)

## SAM (.sam)

## Wig (.wig)

## Bed (.bed)

## GTF (.gtf)

## VCF (.vcf)


## Gedit

## Fasta (.fa; .fasta)
Highlights nucleotide sequence by base. Colors match IGV representations using the Jalview palette.

![Fasta Example](dev/bioSyntax_fasta.png)

## Fastq (.fq; .fastq) [alpha]
Colors headers and nucleotides. Still abit buggy but can be worked out.

![Fq Example](dev/bioSyntax_fq.png)

## Bed (.bed) [alpha]
View bed files with colors based on columns.

![Bed Example](dev/bioSyntax_bed.png)

## Installation (Linux)
- Download the respective `*.lang` files you're interested in
- Download the `bioKate.xml` style scheme
 
- Change permissions to all readonly
	`chmod 0644 *.lang`

- Copy the `bioKate.xml` style scheme to gtksoureview style folder
	`sudo cp bioKate.xml /usr/share/gtksourceview-3.0/styles/bioKate.xml`

- Copy the `*.lang` file(s) to gtksourceview language spec folder
	`sudo cp fasta.lang /usr/share/gtksourceview-3.0/language-specs/fasta.lang`

Restart `gedit` and you should have pretty formats 



