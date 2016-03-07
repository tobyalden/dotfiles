" Required for Vundle
set nocompatible              
filetype off                 

" Load plugins with Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mtscout6/vim-cjsx'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jdonaldson/vaxe'

call vundle#end() 

syntax enable
filetype plugin indent on

" Roll from j to k quickly to get out of insert mode
inoremap jk <ESC>
let mapleader=";"
set encoding=utf-8

" Quote, 'Fuck a mouse'
set mouse=""

" Disable arrow keys
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
set colorcolumn=79
set smartcase
set noswapfile
set scrolloff=10

" Double tap space to save
nmap <space><space> :w<cr>

" ;-n will toggle between relative and absolute line numbers
function! NumberToggle()
    if(&relativenumber ==1)
        set norelativenumber
        set number
    else
        set number
        set relativenumber
    endif
endfunction

nnoremap <leader>n :call NumberToggle()<cr>

" ;-N will turn off line numbers
function! NumberOff()
    set nonumber
    set norelativenumber
endfunction

nnoremap <leader><S-n> :call NumberOff()<cr>

" S will replace the word under the cursor with the yanked buffer
nnoremap S diw"0P
