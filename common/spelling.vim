" ***********************************************************************************
" SPELLING RULES
fun! SetSpellingColors()
  highlight SpellBad cterm=bold ctermfg=white ctermbg=red
  highlight SpellCap cterm=bold ctermfg=red ctermbg=white
endfun

augroup spellrulez
  autocmd!
  autocmd BufWinEnter *.txt,*.md call SetSpellingColors()
  autocmd BufNewFile *.txt,*.md call SetSpellingColors()
  autocmd BufRead *.txt,*.md call SetSpellingColors()
  autocmd InsertEnter *.txt,*.md call SetSpellingColors()
  autocmd InsertLeave *.txt,*.md call SetSpellingColors()
  autocmd BufWritePost *.txt,*.md call SetSpellingColors()
augroup END

