#!/bin/bash
#
# Quick installer for less syntax
# for testing purposes

SRCDIR='/usr/share/source-highlight'

# Copy over src-hilite script
sudo cp src-hilite-lesspipe.sh $SRCDIR/


# Copy over language files
sudo cp fasta.lang $SRCDIR/

# Copy over language files
sudo cp bioSyntax.outlang $SRCDIR/

# Copy over syle files
sudo cp bioSyntax.style $SRCDIR/
