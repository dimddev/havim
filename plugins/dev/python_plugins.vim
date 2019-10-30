" ***********************************************************************************
" PYTHON
Plug 'jmcantrell/vim-virtualenv',        { 'for': 'python' }
Plug 'heavenshell/vim-pydocstring',      { 'for': 'python' }
Plug 'psf/black',                        { 'for': 'python' }

" let g:black_virtualenv = "/home/hakini/.pyenv/versions/3.7.4/envs/py374"

au BufNewFile,BufRead *.py  setlocal tabstop=4 softtabstop=4 shiftwidth=4 fileformat=unix
" autocmd BufEnter *.py colorscheme apprentice
autocmd BufEnter *.py colorscheme PaperColor
