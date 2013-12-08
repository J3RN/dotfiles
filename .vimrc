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

" Rainbow Parentheses
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces

" Pathogen and Coffeescript
"call pathogen#infect()
"syntax enable
"filetype plugin indent on
