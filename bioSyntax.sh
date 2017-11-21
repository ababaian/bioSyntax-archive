#!/bin/sh
# Installer Script for bioSyntax files
# Takes 2 trailing arguments. $1 = text editor, $2 = syntax file name

URL="https://raw.githubusercontent.com/ababaian/bioSyntax/master/syntax"

if ["$1" == "sublime"]; then
	FILE="${2}.sublime-syntax"
	THEME="https://github.com/ababaian/bioSyntax/blob/master/theme/sublime/Color%20Scheme%20-%20bioSyntax.sublime-package"
elif ["$1" == "gedit"]; then
	FILE="${2}.lang"
	THEME="https://raw.githubusercontent.com/ababaian/bioSyntax/master/theme/gedit/bioKate.xml"
elif ["$1" == "vim"]; then
	FILE="${2}.vim"
	#THEME=
elif ["$1" == "less"]; then
	#FILE=
	#THEME=
fi

if  ["$(uname)" == "Darwin"]; then
	# Mac OSX
	if ["$1" == "sublime"]; then
		FPATH="~/Library/Application Support/Sublime Text 3/Packages/User/"
		TPATH="~/Applications/Sublime Text.app/Contents/MacOS/Packages/"
	elif ["$1" == "gedit"]; then
		#FPATH=
		#TPATH=
	elif ["$1" == "vim"]; then
		FPATH="~/.vim/syntax/"
		echo "au BufRead,BufNewFile *.stc set filetype=${2}" > "~./vim/ftdetect/${FILE}"
		#TPATH=
	elif ["$1" == "less"]; then
		#FPATH=
		#TPATH=
	fi


elif ["$(expr substr $(uname -s) 1 5)" == "Linux"]; then
	# Linux
	if ["$1" == "sublime"]; then
		FPATH="~/.config/sublime-text-3/Packages/User/"
		TPATH="../sublime_text_3/Packages"
	elif ["$1" == "gedit"]; then
		FPATH="/usr/share/gtksourceview-3.0/language-specs/"
		TPATH="/usr/share/gtksourceview-3.0/styles/"
	elif ["$1" == "vim"]; then
		FPATH="~/.vim/syntax/"
		echo "au BufRead,BufNewFile *.stc set filetype=${2}" > "~./vim/ftdetect/${FILE}"
		#TPATH=
	elif ["$1" == "less"]; then
		#FPATH=
		#TPATH=
	fi

elif ["$(expr substr $(uname -s) 1 10)" == "MINGW64_NT"]; then
	# Windows 64-bit
	if ["$1" == "sublime"]; then
		FPATH="%APPDATA%/Roaming/Sublime Text 3/Packages/"
		TPATH="C:/Program Files/Sublime Text 3/Packages/"
	elif ["$1" == "gedit"]; then
		#FPATH=
		#TPATH=
	elif ["$1" == "vim"]; then
		FPATH="$HOME/vimfiles/syntax/"
		echo "au BufRead,BufNewFile *.stc set filetype=${2}" > "$HOME/vimfiles/ftdetect/${FILE}"
		#TPATH=
	elif ["$1" == "less"]; then
		#FPATH=
		#TPATH=
	fi

fi

curl -O "${THEME}" -o "${TPATH}/${THEME}"
curl -O "${URL}/${1}/${FILE}" -o "${FPATH}/${FILE}"
chmod 755 "${FPATH}/${FILE}"
chmod 755 "${TPATH}/${THEME}"


