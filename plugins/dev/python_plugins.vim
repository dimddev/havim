" ***********************************************************************************
" PYTHON
Plug 'jmcantrell/vim-virtualenv',        { 'for': 'python' }
Plug 'heavenshell/vim-pydocstring',      { 'for': 'python' }

au BufNewFile,BufRead *.py  setlocal tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 fileformat=unix
