set nocompatible              
filetype off                 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Glench/Vim-Jinja2-Syntax'

call vundle#end() 

syntax enable
filetype plugin indent on

inoremap jk <ESC>
let mapleader=";"
set encoding=utf-8

set mouse=""
nnoremap <down>  <nop>
nnoremap <left>  <nop>
nnoremap <right> <nop>
nnoremap <up>    <nop>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

set relativenumber

set runtimepath^=~/.vim/bundle/ctrlp.vim
set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline cursorcolumn
set colorcolumn=80
set smartcase
set noswapfile
set scrolloff=10
