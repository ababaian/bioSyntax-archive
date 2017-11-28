#!/bin/sh
# General Cross-Platform Installer Script for bioSyntax files
# MUST BE EXECUTED FROM ROOT AS ADMIN
# Takes 2 mandatory trailing arguments. $1 = text editor, $2 = syntax file name
# AVAILABLE FOR:
#	- Linux Ubuntu: sublime
#	- Windows: sublime, gedit, vim
#	- MacOSX: sublime, vim
# SYNTAX FILES FORMATS: (* - in progress)
#	- Sublime Text 3: fasta, fastq, clustal, bed, gtf, pdb, vcf, sam
#	- Gedit: fasta, fastq, clustal, bed, gtf*, pdb*
#	- Vim: fasta, fastq, clustal, bed, gtf, vcf, sam*
#	- Less: fasta, fastq, clustal, bed, gtf, pdb, vcf, sam
printf "bioSyntax is a syntax highlighting tool for computational biology. For more information, visit biosyntax.org.\\n"



## FILE AND URL FORMATTING
if [ "$1" == "sublime" ]; then
	TURL="https://github.com/ababaian/bioSyntax/blob/installer/theme/sublime/Color%20Scheme%20-%20bioSyntax.sublime-package"
	FILE="${2}.sublime-syntax"
	THEME="Color Scheme - bioSyntax.sublime-package"
elif [ "$1" == "gedit" ]; then
	TURL="https://raw.githubusercontent.com/ababaian/bioSyntax/installer/theme/gedit/bioKate.xml"
	FILE="${2}.lang"
	THEME="bioKate.xml"
elif [ "$1" == "vim" ]; then
	TURL="https://github.com/ababaian/bioSyntax/tree/installer/syntax/vim/ftdetect/${2}.vim"
	FILE="${2}.vim"
	THEME="${2}.vim"
elif [ "$1" == "less" ]; then
	TURL="https://github.com/ababaian/bioSyntax/tree/installer/syntax/less/{2}.style"
	FILE="${2}.lang"
	THEME="${2}.style"
else
	 printf "ERROR: %s is not a valid/supported editor. Currently, bioSyntax is available for sublime, gedit, vim, and less.\\n" "$1"
	 exit 1
fi

# Mac OSX - Available for: Sublime Text 3, Vim
if  [ "$(uname)" == "Darwin" ]; then
	if [ "$1" == "sublime" ]; then
		printf "Downloading latest %s syntax file(s) and bioSyntax Color Scheme for Mac OSX Sublime Text 3.\\n" "$2"
		FPATH=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=/Applications/Sublime\ Text.app/Contents/MacOS/Packages
	elif [ "$1" == "vim" ]; then
		printf "Downloading latest %s syntax file(s) and style file(s) for Mac OSX Vim.\\n" "$2"
		if [ ! grep -Fxq "syntax enable" ~/.vimrc ]; then "syntax enable" > ~./vimrc; fi
		FPATH=~/.vim/syntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then mkdir "${FPATH}"; fi
		#echo "au BufRead,BufNewFile *.stc set filetype=${2}" > ~./vim/ftdetect/${FILE}
	#elif [ "$1" == "gedit" ]; then
	#	printf "Downloading latest %s lang file(s) and bioKate theme for Mac OSX Gedit.\\n" "$2"
	#	FPATH=/
	#	TPATH=/
	#elif [ "$1" == "less" ]; then
	#	printf "Installing/updating source-highlight for Less and downloading latest %s lang file(s) and style file(s) for Mac OSX Less.\\n" "$2"
	#	FPATH=/
	#	TPATH=/
	else
		printf "ERROR: %s is not a valid/supported editor for MacOS. Currently, bioSyntax is available for sublime and vim for MacOS.\\n" "$1"
		exit 1
	fi

# Linux Ubuntu - Available for: Sublime Text 3, Gedit, Vim, Less
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	if [ "$1" == "sublime" ]; then
		printf "Downloading latest %s syntax file(s) and bioSyntax Color Scheme for Linux Sublime Text 3.\\n" "$2"
		FPATH=~/.config/sublime-text-3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=../sublime_text_3/Packages/
	elif [ "$1" == "gedit" ]; then
		printf "Downloading latest %s lang file(s) and bioKate theme for Linux Gedit.\\n" "$2"
		FPATH=/usr/share/gtksourceview-3.0/language-specs/
		TPATH=/usr/share/gtksourceview-3.0/styles/
	elif [ "$1" == "vim" ]; then
		printf "Downloading latest %s syntax file(s) and style file(s) for Linux vim.\\n" "$2"
		if [ ! grep -Fxq "syntax enable" ~/.vimrc ]; then "syntax enable" > ~./vimrc; fi
		FPATH=~/.vim/syntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=~/.vim/ftdetect/
		if [ ! -d "${TPATH}" ]; then mkdir "${FPATH}"; fi
		#echo "au BufRead,BufNewFile *.stc set filetype=${2}" > ~./vim/ftdetect/${FILE}
	elif [ "$1" == "less" ]; then
		printf "Installing/updating source-highlight for Less and downloading latest %s lang file(s) and style file(s) for Linux Less.\\n" "$2"
		apt-get update
		apt-get install source-highlight
		FPATH=/usr/share/source-highlight/
		TPATH=/usr/share/source-highlight/
		curl -O "https://raw.githubusercontent.com/ababaian/bioSyntax/installer/syntax/less/rc_append.txt" > ~/.bashrc
		curl -O "https://raw.githubusercontent.com/ababaian/bioSyntax/installer/syntax/less/src-hilite-lesspipe_BIO.sh"
		mv "src-hilite-lesspipe_BIO.sh" "${TPATH}/src-hilite-lesspipe.sh"
		curl -O "https://raw.githubusercontent.com/ababaian/bioSyntax/installer/syntax/less/bioSyntax.outlang"
		mv "biosyntax.outlang" "${TPATH}"
		curl -O "https://raw.githubusercontent.com/ababaian/bioSyntax/installer/syntax/less/bioSyntax-vcf.outlang"
		mv "bioSyntax-vcf.outlang" "${TPATH}"
	else
		printf "ERROR: %s is not a valid/supported editor for Linux Ubuntu. Currently, bioSyntax is available for sublime, gedit, vim, and less for Linux Ubuntu.\\n" "$1"
		exit 1
	fi

# Windows - Available for: Sublime Text 3, Gedit, Vim
else
	if [ "$1" == "sublime" ]; then
		printf "Downloading latest %s syntax file(s) and bioSyntax Color Scheme for Windows Sublime Text 3.\\n" "$2"
		FPATH=%APPDATA%/Roaming/Sublime Text 3/Packages/User/bioSyntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=C:/Program Files/Sublime Text 3/Packages/
	elif [ "$1" == "gedit" ]; then
		printf "Downloading latest %s lang file(s) and bioKate theme for Windows Gedit.\\n" "$2"
		# !!! GET THE WINDOWS PATHS FOR THE SYNTAX FILES AND THEME
		FPATH=/
		TPATH=/
	elif [ "$1" == "vim" ]; then
		printf "Downloading latest %s syntax file(s) and style file(s) for Windows vim.\\n" "$2"
		if [ ! grep -Fxq "syntax on" "$HOME/_vimrc" ]; then "syntax on" > $HOME/_vimrc; fi
		FPATH=$HOME/vimfiles/syntax/
		if [ ! -d "${FPATH}" ]; then mkdir "${FPATH}"; fi
		TPATH=$HOME/vimfiles/ftdetect/
		if [ ! -d "${TPATH}" ]; then mkdir "${FPATH}"; fi
		#echo "au BufRead,BufNewFile *.stc set filetype=${2}" > $HOME/vimfiles/ftdetect/${FILE}
	#elif [ "$1" == "less" ]; then
	#	printf "Installing/updating source-highlight for Less and downloading latest %s lang file(s) and style file(s) for Windows Less.\\n" "$2"
	#	FPATH=/
	#	TPATH=/
	else
		printf "ERROR: %s is not a valid/supported editor for Windows. Currently, bioSyntax is available for sublime, gedit, and vim for Windows.\\n" "$1"
		exit 1
	fi
fi

# DOWNLOAD THEME/STYLE FILE, PLACE IT IN RIGHT DIRECTORY, CHANGE TO READ-ONLY
curl -O "${TURL}"
chmod 0644 "$(basename ${TURL})"
mv "$(basename ${TURL})" "${TPATH}/${THEME}"

# DOWNLOAD SYNTAX FILE, PLACE IT IN RIGHT DIRECTORY, CHANGE TO READ-ONLY
SURL="https://raw.githubusercontent.com/ababaian/bioSyntax/installer/syntax/"
curl -O "${SURL}/${1}/${FILE}"
chmod 0644 "${FILE}"
mv "${FILE}" "${FPATH}"



printf "Installation successful. Restart %s and you will now have pretty %s formats! Thank you for your support :)\\n" "$1" "$2"




