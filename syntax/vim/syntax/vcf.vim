" Vim syntax file
" Language: biomolecule structure files

if exists("b:current_syntax")
  finish
endif

syn match vcfComment '^##'
syn match vcfFileFormat '^fileformat=.*\n'
syn match vcfValue '\(=\)\@<=\w\+'
syn match vcfInteger '\(=\)\@<=Integer'
syn match vcfString '\(=\)\@<=String'
syn match vcfFloat '\(=\)\@<=Float'
syn match vcfQuoteString '\(=\)\@<==\"[A-Za-z\s\d]\+\"'

syn region INFO matchgroup=INFO start="^INFO" end="\n" contains=vcfValue, vcfInteger, vcfString, vcfFloat, vcfQuoteString

highlight vcfComment ctermfg=Yellow guifg=Yellow
highlight vcfFileFormat ctermfg=Yellow guifg=Yellow
highlight vcfFileValue ctermfg=Magenta guifg=Magenta
highlight vcfInteger ctermfg=Cyan guifg=Cyan
highlight vcfString ctermfg=Red guifg=Red
highlight vcfFloat ctermfg=Magenta guifg=Magenta
highlight vcfQuoteString ctermfg=DarkGreen guifg=DarkGreen

highlight INFO ctermfg=Green guifg=Green




