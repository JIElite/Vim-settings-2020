set nu
set shiftwidth=4

set nocompatible                  " be iMproved, required
filetype off                      " required
 
" Put your non-Plugin stuff after this line
"colo murphy      " set colorscheme
" color monokai 
syntax enable    " enable syntax highlighting 
set number       " show line numbers 
" set mouse=a      " turn on xterm style mousing which allows to select text w/o line numbers 
" set clipboard=unnamedplus " copy yanked text to system clipboard 
set ts=4         " set tabs to have 4 spaces
set expandtab    " expand tabs into spaces 
set shiftwidth=4 " when using the >> or << commands, shift lines by 4 spaces 
set showmatch    " show the matching part of the pair for [] {} and () 
set laststatus=2 " display file name on the bottom bar
let python_highlight_all = 1 " enable all Python syntax highlighting features
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'zchee/deoplete-jedi'
endif
let g:deoplete#enable_at_startup = 1

" Initialize plugin system
call plug#end()
