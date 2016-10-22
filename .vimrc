" ~/.vimrc

set nocompatible  " cancel compatibility with vi

" activate pathogen
execute pathogen#infect()

" display
set number        " display line numbers
set ruler         " display cursor position
set wrap          " wrap lines when they are too long

set scrolloff=3   " display at least 3 lines around the cursor
                  " (for scrolling)

" search
set ignorecase    " ignore case when searchin
set smartcase     " if there is an uppercase in the search term
                  " search case sensitive again

set incsearch     " highlight search results when typing
set hlsearch      " highlight search results

" beep
set visualbell    " prevent vim from beeping
set noerrorbells  " prevent vim from beeping

" backspace behaves as expected
set backspace=indent,eol,start

" hide buffer (file) instead of abandoning when switching
" to another buffer
set hidden

" enable syntax highlighting
syntax on

" enable file specific behaviour like syntax highlighting
" and indentation
filetype plugin indent on

" use a dark vim theme
" set background=dark
" colorscheme solarized

" set encoding=utf-8
" set tabstop=2
" set shiftwidth=2
" set expandtab
" set modifiable
" 
let base16colorspace=256  " Access colors present in 256 colorspace

" disable the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

let mapleader = ","
let g:ctrlp_map= "<leader>c"

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" javascript formatter
let g:syntastic_javascript_checkers = ['standard']
autocmd bufwritepost *.js silent !standard-format -w %
set autoread
