# Vim settings 2020

## Objective
Install deoplete in Vim/NeoVim

## General configuration
Install neovim on ubuntu
```
sudo apt install neovim
```

Install Pytorch support:
```
pip3.6 install pynvim
```

## Vim 8.0+
**Step1. Install vim-plug**
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Edit .vimrc
```
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
```

**Step2. Install deoplete and deoplete.jedi**
```
:PlugInstall
```
## NeoVim

** Step1. Install vim-plug **
```
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Edit init.vim
```
"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'
    let g:deoplete#enable_at_startup = 1 
"Initialize plugin system
call plug#end() 
```

**Step2. Install deoplete and deoplete.jedi**
```
:PlugInstall
```

## Reference
1. [vim-plug](https://github.com/junegunn/vim-plug)
2. [Chris' vim plugin tutorial](https://www.chrisatmachine.com/Neovim/01-vim-plug/)
3. [Deoplete](https://github.com/Shougo/deoplete.nvim)