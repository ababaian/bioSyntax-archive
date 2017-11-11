# File Format Compability in bioSyntax

X   = Syntax Complete
O   = Syntax Near-complete
@   = Working Alpha
' ' = We're not there yet 
na  = No planned development

# Core Syntaxes
| File Format | Description                 | sublime | vim | gedit | less  |
|-------------|-----------------------------|:-------:|:---:|:-----:|:-----:|
| .fasta      | Generic nt/aa sequence      |    O    |  O  |   O   |   X   |
| .fq         | Fasta + PHRED quality       |    X    |  O  |   @   |   na  |
| .clustal    | Multiple Sequence Alignment |    X    |     |       |   na  |
| .bed        | Genomic Ranges              |    O    |     |   @   |   na  |
| .gtf        | Genomic Annotation          |    X    |     |       |   na  |
| .pdb        | Protein Structure           |    X    |     |       |   na  |
| .vcf        | Variant Call Format         |    O    |     |       |   X   |
| .sam        | NGS Sequence Data           |    O    |     |   O   |   X   |

# Auxillary Syntaxes
| File Format | Description                 | sublime | vim | gedit |
|-------------|-----------------------------|:-------:|:---:|:-----:|
| .faa        | fasta with alt. aa colors)  |         |     |       |
| -           | Clustal                     |    X    |  O  |   O   |
| -           | Taylor                      |    X    |  O  |   O   |
| -           | Zappo                       |    X    |  O  |   O   |
| -           | Hydrophobicity              |    X    |  O  |   O   |
| .fai        | Fasta Index                 |    X    |     |       |
| .flagstat   | samtools summary            |    X    |     |       |
| .wig        | Wiggle data                 |    O    |     |       |
| .newick     | Tree Format                 |         |     |       |
| .phylip     | Multiple Sequence Alignment |         |     |       |

Is your favorite file format not listed? Consider [collaborating](../collaborate.md) with us and adding it, we'll help you get started.


[ under construction ]
- Add links or better yet pop-up images for each file format to show examples on mouse-over
- 