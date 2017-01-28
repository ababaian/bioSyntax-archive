# bioSyntax
Syntax highlighting for computational biology file formats in gtksourceview / gedit.

## Installation
- Download the respective `*.lang` files you're interested in
- Download the `bioKate.xml` style scheme
 
- Change permissions to all readonly
	`chmod 0644 *.lang`

- Copy the `bioKate.xml` style scheme to gtksoureview style folder
	`sudo cp bioKate.xml /usr/share/gtksourceview-3.0/styles/bioKate.xml`

- Copy the `*.lang` file(s) to gtksourceview language spec folder
	`sudo cp fasta.lang /usr/share/gtksourceview-3.0/language-specs/fasta.lang`

Restart `gedit` and you should have pretty formats 

## Bed (.bed) [alpha]
View bed files with colors based on columns.

## Fasta (.fa; .fasta)
Highlights nucleotide sequence by base. Colors match IGV representations using the Jalview palette.

![Fasta Example](dev/bioSyntax_fasta.png)


