" ********************************************************************************************************
" RUBY
Plug 'vim-ruby/vim-ruby',                { 'for': 'ruby' }
Plug 'tpope/vim-rails',                  { 'for': 'ruby' }
Plug 'tpope/vim-rbenv',                  { 'for': 'ruby' }
Plug 'tpope/vim-bundler',                { 'for': 'ruby' }
Plug 'tpope/vim-endwise',                { 'for': 'ruby' }
Plug 'slim-template/vim-slim',           { 'for': 'ruby' }

" ********************************************************************************************************
" VIMUX
Plug 'benmills/vimux',                   { 'for': 'ruby' }

map <Leader>z :call VimuxZoomRunner()<CR>
map <Leader>x :call VimuxCloseRunner()<CR>
map <Leader>c :call VimuxOpenRunner()<CR>

" ********************************************************************************************************
" VROOM
Plug 'skalnik/vim-vroom',                { 'for': 'ruby' }

let g:vroom_use_colors = 1
let g:vroom_use_vimux = 1
let g:vroom_detect_spec_helper = 1
let g:vroom_spec_command = 'rspec -fd '
