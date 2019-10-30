" ***********************************************************************************
" FRONTEND
Plug 'mhartington/oceanic-next',          { 'for': ['javascript', 'html']}
Plug 'othree/yajs.vim',                   { 'for': 'javascript' }
Plug 'leafgarland/typescript-vim',        { 'for': 'java' }
Plug 'HerringtonDarkholme/yats.vim',      { 'for': 'javascript' }
Plug 'othree/html5.vim',                  { 'for': 'html' }
Plug 'mxw/vim-jsx',                       { 'for': 'javascript' }
Plug 'Quramy/tsuquyomi',                  { 'for': 'typescript' }

" ***********************************************************************************
" JSX
let g:jsx_ext_required = 0 " Allow JSX in normal JS files"
autocmd BufEnter *.js colorscheme OceanicNext
autocmd BufEnter *.ts colorscheme OceanicNext
" autocmd BufEnter *.js colorscheme oceanblack256
