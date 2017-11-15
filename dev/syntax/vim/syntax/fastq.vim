if exists("syntax_on")
        syntax reset
endif


syntax match qual0 "[/\!-/\/]" contains=quality
syntax match qual1 "[0-9]" contains=quality
syntax match qual2 "[/\:/\;/\</\=/\>/\?/\@]" contains=quality
syntax match qual3 "[A-J]" contains=quality

syntax match header "^@\{1,2}.*$"
syntax region quality start="\(+\_s\+\)\@<=.*" end=".*$" contains=qual0,qual1,qual2,qual3
"syntax region bases start="/{[ACGT]}[/]<CR>" end="$" contained

syntax match ntA "A" "contains=bases
syntax match ntG "G" "contains=bases
syntax match ntC "C" "contains=bases
syntax match ntT "T" "contains=bases

syntax match qual3 "^[ACG]" contains=quality

hi def link header Identifier
highlight qual0 ctermfg=DarkGrey
highlight qual1 ctermfg=Grey
highlight qual2 ctermfg=LightRed
highlight qual3 ctermfg=Red

highlight ntA ctermfg=Black ctermbg=Green guibg=#272822
highlight ntG ctermfg=Black ctermbg=Yellow guibg=#FF8C00
highlight ntC ctermfg=Black ctermbg=Blue guibg=#2A0AFD
highlight ntT ctermfg=Black ctermbg=Red guibg=#FD0A0A
