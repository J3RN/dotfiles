" Rails has forced me to love spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Line numbers are pretty great
set nu

" Use System clipboard
set clipboard=unnamed

" People told me to
set nocompatible

" Highlight current line
"set cursorline

" Custom search stuff
set ignorecase
set incsearch
set hlsearch

" This seems interesting
set ruler

" Show when I go over 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
endif

" Show the current mode. Just cuz
set showmode

" Unix line endings. Seriously, people.
set fileformat=unix

" No line wrapping
set nowrap

" Pathogen
execute pathogen#infect()

" Syntax Highlighting
syntax on

" Enable the filetype plugin and indenting
filetype plugin indent on

" Enable airline bar all the time
set laststatus=2

" Enable powerline font for airline
let g:airline_powerline_fonts = 1

" Set vim to use 256 colors (Tmux/Vim Airline fix)
set t_Co=256

" Set NERDTree to toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

" Needed as I use fish
set shell=/bin/bash

" I was told all the cool kids did it
:imap jk <Esc>
