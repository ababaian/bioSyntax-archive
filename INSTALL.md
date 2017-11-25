# Installing bioSyntax

We're working on an installer to make this easier, but if you can't wait, here's how to get bioSyntax now.

1. [sublime](#sublime)
2. [gedit](#gedit)
3. [less](#less)


## sublime
(Linux / Mac / Win)

0. Install [Sublime Text](http://www.sublimetext.com/)
1. Download the [bioMonokai Color Scheme](https://github.com/ababaian/bioSyntax/blob/master/dev/theme/sublime/Color%20Scheme%20-%20bioSyntax.sublime-package).
2. Copy it to your Sublime Text application packages folder:
- **Linux**: `../sublime_text_3/Packages/`
- **Windows**: `C:/Program Files/Sublime Text 3/Packages/`
- **Mac**: `/Applications/Sublime Text.app/Contents/MacOS/Packages/`
3. Download the [bioSyntax sublime package](https://github.com/ababaian/bioSyntax/blob/master/syntax/bioSyntax_sublime_RELEASE.zip).
4. Unzip the `*.sublime-syntax` files into the Sublime Text Packages folder:
- **Linux**: `~/.config/sublime-text-3/Packages/User/`
- **Windows**: `%APPDATA%/Roaming/Sublime Text 3/Packages/`
- **Mac**: `/Users/your_username/Library/Application Support/Sublime Text 3/Packages/`
5. Open Sublime Text and go select the bioSyntax (bioMonokai) theme
`Preferences > Color Scheme > bioMonokai`
6. Formats should auto-detect; you can select a specific syntax at the drop-menu at the bottom-right corner of the window (e.g. Plain Text)
7. You now have pretty formats!

## gedit
(Linux / Win)
1. Download the respective `*.lang` files you're interested in
2. Download the `bioKate.xml` style scheme
 
3. Change permissions to all readonly
	`chmod 0644 *.lang`

4. Copy the `bioKate.xml` style scheme to gtksoureview style folder
	`sudo cp bioKate.xml /usr/share/gtksourceview-3.0/styles/bioKate.xml`

5. Copy the `*.lang` file(s) to gtksourceview language spec folder
	`sudo cp fasta.lang /usr/share/gtksourceview-3.0/language-specs/fasta.lang`

6. Restart `gedit` and select the bioSyntax theme
	`Edit > Preferences > Font & Color > bioKate'`
7.  You now have pretty formats!

## less
(Linux)

### Install `source-highlight` (Ubuntu)

1) Install `source-highlight` to your system:
```
sudo apt-get update
sudo apt-get install source-highlight
```
2) Append these lines to your `~/.bashrc` and/or `~/.zshrc` 
```

## Syntax highlighting in less
## For Ubuntu / Fedora
export LESSOPEN="| /usr/share/source-highlight/src-hilite-lesspipe.sh %s"
export LESS=" -R "

alias less='less -NSi -# 10'
alias more='less'

# Explicit fasta / sam less call for piping
# i.e:   samtools view -h aligned_hits.bam | sam-less
#
alias fa-less='source-highlight -f esc --lang-def=fasta.lang --outlang-def=bioSyntax.outlang --style-file=fa.style | less'
alias sam-less='source-highlight -f esc --lang-def=sam.lang --outlang-def=bioSyntax.outlang --style-file=sam.style | less'
alias vcf-less='source-highlight -f esc --lang-def=vcf.lang --outlang-def=bioSyntax-vcf.outlang --style-file=vcf.style | less'
```

**Note**: On different systems the `/usr/share/source-highlight/src-hilite-lesspipe.sh` may be installed to a different directory. (i.e CentOS: `export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"`)

### Installing `bioSyntax` for less (Ubuntu)

1) Update the `src-hilite-lesspipe.sh` script in the source-highlight directory.

```
# source-highlight directory on your system
SRCDIR='/usr/share/source-highlight'

cd  $bioSyntax_PATH/syntax/less/

sudo cp src-hilite-lesspipe_BIO.sh $SRCDIR/src-hilite-lesspipe.sh
```

2) Copy over the `*.lang`, `.outlang` and `.syntax` files to the source-highlight directory.

```
#!/bin/bash
# quickInstall.sh
# Quick installer for less syntax
# for testing purposes

SRCDIR='/usr/share/source-highlight'

# Copy over src-hilite script
sudo cp src-hilite-lesspipe_BIO.sh $SRCDIR/src-hilite-lesspipe.sh


# Copy over language files
sudo cp fasta.lang $SRCDIR/
sudo cp sam.lang $SRCDIR/
sudo cp vcf.lang $SRCDIR/

# Copy over syle files
sudo cp fasta.style $SRCDIR/
sudo cp sam.style $SRCDIR/
sudo cp vcf.style $SRCDIR/

# Copy over language files
sudo cp bioSyntax.outlang $SRCDIR/
sudo cp bioSyntax-vcf.outlang $SRCDIR/
```

3) Restart your computer for the `rc` file to update in your terminal.