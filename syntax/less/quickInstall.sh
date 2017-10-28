#!/bin/bash
#
# Quick installer for less syntax
# for testing purposes

SRCDIR='/usr/share/source-highlight'

# Copy over src-hilite script
sudo cp src-hilite-lesspipe_BIO.sh $SRCDIR/src-hilite-lesspipe.sh


# Copy over language files
sudo cp fasta.lang $SRCDIR/
sudo cp sam.lang $SRCDIR/

# Copy over language files
sudo cp bioSyntax.outlang $SRCDIR/

# Copy over syle files
sudo cp bioSyntax.style $SRCDIR/

