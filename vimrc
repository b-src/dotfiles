" Disable vi compatibility
set nocompatible

" Set utf-8 as standard encoding and en_US as the standard language
set encoding=utf8

" Enable file type detection
filetype on

" Syntax highlighting
syntax on

" Line numbers - absolute in insert mode, relative otherwise
:set number

:augroup numbertoggle
:   autocmd!
:   autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:   autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif

" Tab width of 4 spaces, spaces instead of tabs
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Show matching brackets
set showmatch

" Don't let cursor scroll past an N line margin
set scrolloff=10

" Don't wrap lines
set nowrap

" Search settings
" highlight results incrementally, ignore case except when searching for
" capitals
set hlsearch
set incsearch
set ignorecase
set smartcase

" Show command as it is being typed
set showcmd

" Command history length
set history=1000

" Don't redraw while executing macros
set lazyredraw

" No sound on errors
set noerrorbells
set novisualbell

" Turn backup off
set nobackup
set nowb
set noswapfile

" Map 'jk' to esc
" Do not use vnoremap or nnoremap because it slows movement
inoremap jk <esc>


call plug#begin('~/.vim/plugged')
Plug 'ziglang/zig.vim', { 'for': 'zig' }
call plug#end()

