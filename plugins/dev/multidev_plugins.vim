" ***********************************************************************************
" MULTI DEVELOPMENT PLUGINS
Plug 'tpope/vim-fugitive',               { 'for': ['python', 'ruby', 'javascript'] }
Plug 'craigemery/vim-autotag',           { 'for': ['python', 'ruby', 'javascript'] }

" ***********************************************************************************
" ULTISNIPS
Plug 'SirVer/ultisnips',                 { 'for': ['python', 'ruby', 'javascript'] }
Plug 'honza/vim-snippets',               { 'for': ['python', 'ruby', 'javascript'] }

let g:UltiSnipsExpandTrigger = "<c-j>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

" ***********************************************************************************
" VIM-COLORS
Plug 'flazz/vim-colorschemes',           { 'for': ['python', 'ruby', 'javascript'] }
colorscheme badwolf

" ***********************************************************************************
" ALE
Plug 'dense-analysis/ale',               { 'for': ['python', 'ruby', 'javascript'] }
let g:ale_linters = {
  \ 'python': ['pylint', 'pycodestyle', 'pep8']
  \ }
let b:ale_fixers = {'python': ['autopep8', 'yapf'], 'javascript': ['prettier', 'eslint']}

" if exists("*FugitivePrepare")
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{virtualenv#statusline()}
set statusline+=%*

" endif
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'branch': 'release/1.x',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html', 'python'] }

let g:prettier#exec_cmd_async = 1

