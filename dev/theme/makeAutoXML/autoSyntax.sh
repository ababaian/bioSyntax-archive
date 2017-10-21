#!/bin/bash
#
# autoSyntax.sh
#
# Take a tab-seperated file containing
# <NAME> <SCOPE> <FOREGROUND>
# for defining color scheme
# convert to XML format for .sublime-syntax
#

# Input TSV File
INPUT='input.tsv'

# Template XML File to modify
TEMPLATE='template.syntax'

# Output XML File
OUTPUT='autoSyntax_output.xml'
touch $OUTPUT

# Iterate through each line of the input TSV
# grab the three fields and s/g them to replace
# the variables with the ones in the input.tsv

while read LINE
do
	NAME=$(echo $LINE | cut -f1 -d' ' -)

	SCOPE=$(echo $LINE | cut -f2 -d' ' -)

	FOREGROUND=$(echo $LINE | cut -f3 -d' ' -)

	#echo $LINE
	#echo $NAME
	#echo $SCOPE
	#echo $FOREGROUND

	sed "s/NAME/$NAME/g" $TEMPLATE \
	| sed "s/SCOPE/$SCOPE/g" - \
	| sed "s/FOREGROUND/$FOREGROUND/g" > out.tmp

	cat out.tmp >> $OUTPUT

done < $INPUT

rm out.tmp