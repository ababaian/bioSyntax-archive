" Vim syntax file
" Language: biomolecule structure files

if exists("b:current_syntax")
  finish
endif

" to match the following string with keywords
syn match pdbHeader 'HEADER\s\+.*$'
syn match pdbTitle 'TITLE\s\+.*$'
syn match pdbCompound 'COMPND\s\+.*$'
syn match pdbSource 'SOURCE\s\+.*$'
syn match pdbKeywords 'KEYWDS\s\+.*$'
syn match pdbExpdta 'EXPDTA\s\+.*$'
syn match pdbAuthor 'AUTHOR\s\+.*$'
syn match pdbRevdat 'REVDAT\s\+.*$'
"syn match pdbJournal 'JRNL\s\+.*$'
syn match pdbJournalTitle '\s\+TITL.*'
syn match pdbRemark 'REMARK\s\+.*$'
syn match pdbResolution 'RESOLUTION.*$'
syn match pdbDigitValues ':\s*-\?\d\+\.\?\d*'
syn match pdbNull ':\s*NULL'

syn region pdbJournalRegion start="JRNL" end="$" contains=pdbJournalTitle
syn region pdbRemarkRegion start="REMARK\s\+" end="$" contains=pdbResolution, pdbDigitValues, pdbNull

let b:current_syntax = "pdb"

" hi def link pdbHeaderReg Statement
" hi def link pdbHeader Statement
highlight pdbHeader ctermfg=White ctermbg=Red guifg=White guibg=Red
highlight pdbTitle ctermfg=Red guifg=Red
highlight pdbCompound ctermfg=Blue guifg=Blue
highlight pdbSource ctermfg=Yellow guifg=Yellow
highlight pdbKeywords ctermfg=Grey guifg=Grey
highlight pdbExpdta ctermfg=Brown guifg=Brown
highlight pdbAuthor ctermfg=DarkMagenta guifg=DarkMagenta
highlight pdbRevdat ctermfg=Red guifg=Red
highlight pdbJournalTitle ctermfg=Green guifg=Green
highlight pdbRemark ctermfg=Cyan guifg=Cyan
highlight pdbResolution ctermfg=Green guifg=Green
highlight pdbDigitValues ctermfg=Green guifg=Green
highlight pdbNull ctermfg=Red guifg=Red

hi def link pdbRemarkRegion Keyword
hi def link pdbJournalRegion String  
