" ***********************************************************
set nocompatible              " be iMproved, required
filetype off                  " required
set splitright
set encoding=utf-8
set expandtab
set softtabstop=2
set tabstop=2
set shiftwidth=2
set number
set autoindent
set cursorline
set synmaxcol=120
set hlsearch
set nowrap
set smartcase
set backupcopy=yes
set autoread
set backupdir=~/.cache/vim
set dir=~/.cache/vim
set history=1000
set updatetime=7500

" ***********************************************************
" AUTOMATICALLY LEAVE INSERT MODE,
" AFTER 'updatetime' MILLISECONDS OF INACTION
au CursorHoldI * stopinsert

