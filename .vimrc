let $havim="/home/hakini/projects/havim/"

" ***********************************************************
" GLOBAL SETTINGS
source $havim/config/settings.vim

" ***********************************************************
" LOCAL SETTINGS
setlocal spell spelllang=en

" ***********************************************************
" RUNTIME VIM MACROS
runtime macros/matchit.vim

" ***********************************************************
" THE PLUGIN LOADER IS **PLUG**
call plug#begin('~/.vim/plugged')

" PLugins path
let $havim_plugin_dev=$havim . "plugins/dev/"
let $havim_common=$havim . "common/"

" PLUGINS LIST START HERE ***********************************

" ***********************************************************
" SPELLING RULES
source $havim_common/spelling.vim

" ***********************************************************
" TRANSPARENT EDITING OF GnuPG-ENCRYPTED FILES
source $havim_common/gpg.vim

" ***********************************************************
" SHORTCUTS
source $havim_common/mappings.vim

" ***********************************************************
" AUTOCMD
source $havim_common/autocommands.vim

" ***********************************************************
" DISABLE THE ARROWS HAHA
source $havim_common/disable-arrowkeys.vim

" GLOBAL PLUGINS
source $havim/plugins/global_plugins.vim

" ***********************************************************
" MULTI DEVELOPMENT PLUGINS
source $havim_plugin_dev/multidev_plugins.vim

" ***********************************************************
" RUBY PLUGINS
" source $havim_plugin_dev/ruby_plugins.vim

" ***********************************************************
" SYSTEM LANGUAGES PLUGINS
source $havim_plugin_dev/system_lang_plugins.vim

" ***********************************************************
" FRONTEND PLUGINS
source $havim_plugin_dev/frontend_plugins.vim

" ***********************************************************
" PYTHON PLUGINS
source $havim_plugin_dev/python_plugins.vim

" ALL OF YOUR PLUGINS MUST BE ADDED BEFORE THE FOLLOWING LINE
call plug#end() " initialize plugin system

" filetype plugin indent on    " required
