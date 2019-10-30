" ***********************************************************************************
" MULTI DEVELOPMENT PLUGINS
Plug 'tpope/vim-fugitive',               { 'for': ['python', 'ruby', 'javascript', 'vim', 'html', 'css'] }

nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
nnoremap <silent> <leader>gE :Gedit<space>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gR :Gread<space>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>gW :Gwrite!<CR>
nnoremap <silent> <leader>gq :Gwq<CR>
nnoremap <silent> <leader>gQ :Gwq!<CR>

Plug 'airblade/vim-gitgutter'

" ***********************************************************************************
" ULTISNIPS
" Plug 'SirVer/ultisnips',                 { 'for': ['python', 'ruby', 'javascript'] }
" Plug 'honza/vim-snippets',               { 'for': ['python', 'ruby', 'javascript'] }

" let g:UltiSnipsExpandTrigger = "<c-j>"
" let g:UltiSnipsJumpForwardTrigger = "<c-b>"
" let g:UltiSnipsJumpBackwardTrigger = "<c-z>"

" ***********************************************************************************
" VIM-COLORS
Plug 'flazz/vim-colorschemes',           { 'for': ['python', 'ruby', 'javascript', 'typescript'] }

" ***********************************************************************************
" ALE
Plug 'dense-analysis/ale',               { 'for': ['python', 'ruby', 'javascript', 'typescript'] }
let g:ale_linters = {
  \ 'python': ['pylint', 'pycodestyle', 'pep8'],
  \ 'typescript': ['tsserver', 'tslint']
  \ }

let b:ale_fixers = {
  \ 'python': ['autopep8', 'black'],
  \ 'javascript': ['prettier', 'eslint'],
  \ }

set statusline+=%#warningmsg#
set statusline+=%{virtualenv#statusline()}
set statusline+=%*

" set pyxversion=3
" let g:python3_host_prog = "/home/hakini/.pyenv/versions/3.7.4/bin/python3.7"
" let g:python3_host_prog = "/home/hakini/.pyenv/versions/3.7.4/envs/py374/bin/python3.7"

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
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

