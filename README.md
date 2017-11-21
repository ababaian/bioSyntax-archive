![bioSyntax Logo](dev/img/bioSyntax_logo.png)
![Fasta Banner](dev/img/FastaBanner.png)
Syntax highlighting for computational biology in `vim`, `less`, `sublime3` & `gedit`. Intuitively read your `.sam`, `.vcf`, `.fasta`, `.pdb`, `.gtf` files [& more](http://biosyntax.org/formats).

## [Installing bioSyntax](http://biosyntax.org/install)

## Usage
bioSyntax integrates seamlessly with your text editor, recognizing data-type by the file extension.

#### Streaming Data
For large files, data can be piped directly into `less` using the aliases `sam-less` or `vcf-less` respectively.

	`samtools view -h NA12878_wgs.bam | sam-less`

## Screenshots

#### SAM
![Example less command](docs/assets/images/sam-less_command.gif)
[<img src="http://biosyntax.org/assets/images/sam-less-small.gif">](docs/assets/images/sam-less.png)

#### FASTA
![Fasta Example Sublime](dev/img/fasta_nt.png)

#### PDB
![Pdb Example Sublime](dev/img/PDB_header1.png)


*************************************************

A [hackseq17](https://www.hackseq.com) initiative by:

[Artem Babaian](https://github.com/ababaian) | [Eric Chu](https://github.com/echu113) | [Anicet Ebou](https://github.com/ebedthan) | [Alyssa Fegen](https://github.com/alyeffy) | [Jeffrey Kam](https://github.com/lazypanda10117) | [Gherman Novakovskiy](https://github.com/fransilvion) | [Jasper Wong](https://github.com/Jwong684)

Contact us: [info[AT]biosyntax.org](mailto:info@biosyntax.org)
