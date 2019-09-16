" ***********************************************************
" RUN RSPEC ON SAVE
" autocmd BufWritePost *.rb VroomRunTestFile

" ***********************************************************
" UPDATE CTAGS ON SAVE
autocmd BufWritePost *
  \ if filereadable('tags') |
  \  call system('ctags -a '.expand('%')) |
  \ endif
