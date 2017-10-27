" .vimrc

" Tabs and Spaces {{{
set tabstop=4                                           " number of visual spaces per TAB
set softtabstop=4                                       " numer of spaces in tab when editing
set expandtab                                           " tabs are spaces
set shiftwidth=4                                        " number of spaces that correspond to a single tab
set smarttab                                            " tab to the next indent
" }}}
" UI Configuration {{{
set nocompatible                                        " Use vim like it's 2017
set number                                              " show line numbers
set relativenumber                                      " show relative line numbers
set showcmd                                             " show command in bottom bar       
set cursorline                                          " highlight the current line
set wildmenu                                            " visual autocomplete for command menu
set showmatch                                           " highlight matching [{()}]
set noshowmode                                          " hide --INSERT-- in status, displayed in lightline
" }}}
" Searching {{{
set hlsearch                                            " Highlight searsh results
set incsearch                                           " Set incremental search
" }}}
" ESC hids search highlight {{{
noremap <silent> <ESC> :nohlsearch<BAR>:echo<CR>       
" }}}
" Syntax {{{
syntax enable                                           " enable syntax processing
filetype on                                             " syntax highlight based on file extension
" }}}
" Mapping {{{
inoremap jk <ESC>                                     
" }}}
" Misc {{{
set modelines=1                                         " add line for lightline

map <leader>s :source ~\.vimrc<CR>                      
" }}}
" Folding {{{
set foldenable              " enable folding
set foldlevel=10            " open upto 10 levels by default
set foldnestmax=10          " 10 nested folds max
set foldmethod=indent       " fold based on indent

nnoremap <space> za         
" }}}
" Plugins {{{
execute pathogen#infect()

set laststatus=2
" }}}

" vim:foldmethod=marker:foldlevel=0
