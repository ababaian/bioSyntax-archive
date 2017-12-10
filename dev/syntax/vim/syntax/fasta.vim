if exists("syntax_on")
	syntax reset
	colorscheme bioSyntax
	set nowrap
endif

syntax match headerbw ">.*$"
syntax region bases start="^[ACGTURYSWMKDBVHN/\-/\.]\{10,}" end=".*$" contains=ntA,ntG,ntC,ntT,ntU,ntR,ntY,ntS,ntW,ntM,ntK,ntD,ntB,ntV,ntH,ntN,ntGap
syntax match ntA "A" contained
syntax match ntG "G" contained
syntax match ntC "C" contained
syntax match ntT "T" contained
syntax match ntU "U" contained
syntax match ntR "R" contained
syntax match ntY "Y" contained
syntax match ntS "S" contained
syntax match ntW "W" contained
syntax match ntM "M" contained
syntax match ntK "K" contained
syntax match ntD "D" contained
syntax match ntB "B" contained
syntax match ntV "V" contained
syntax match ntH "H" contained
syntax match ntN "N" contained
syntax match ntGap "[/\-/\.]" contained

"highlight comment ctermfg=253
"highlight ntA ctermfg=Black ctermbg=10
"highlight ntG ctermfg=Black ctermbg=214
"highlight ntC ctermfg=Black ctermbg=09
"highlight ntT ctermfg=Black ctermbg=33

