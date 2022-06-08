" Required for Vundle
set nocompatible              
filetype off                 

" Load plugins with Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jdonaldson/vaxe'
Plugin 'mileszs/ack.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'tpope/vim-abolish'
Plugin 'rust-lang/rust.vim'
Plugin 'ziglang/zig.vim'

"let g:rustfmt_autosave = 1

set formatoptions-=c formatoptions-=r formatoptions-=o

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

set laststatus=2

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set cursorline cursorcolumn
" set colorcolumn=79
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

function! TogglePaste()
    if(&paste == 0)
        set paste
        echo "Paste Mode Enabled"
    else
        set nopaste
        echo "Paste Mode Disabled"
    endif
endfunction

nnoremap <leader>a :Ack<Space>
nnoremap <leader>A :tabnew <bar> :Ack<Space>
nnoremap <leader>s :split<Space>
nnoremap <leader>v :vsplit<Space>
nnoremap <leader>t :tabnew<Space>
nnoremap <leader>p :call TogglePaste()<cr>

