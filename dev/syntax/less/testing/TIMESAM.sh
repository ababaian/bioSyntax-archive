#!/bin/bash

FILE="$PWD/data/test2.sam"

source-highlight --statistics -f esc --lang-def=$PWD/sam.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/sam.style -i $FILE | tail -n1 -

source-highlight --statistics -f esc --lang-def=$PWD/sam.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/sam.style -i $FILE | tail -n1 -

source-highlight --statistics -f esc --lang-def=$PWD/sam.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/sam.style -i $FILE | tail -n1 -

source-highlight --statistics -f esc --lang-def=$PWD/sam.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/sam.style -i $FILE | tail -n1 -

source-highlight --statistics -f esc --lang-def=$PWD/sam.lang \
 --outlang-def=$PWD/bioSyntax.outlang \
 --style-file=$PWD/sam.style -i $FILE | tail -n1 -
