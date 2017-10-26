"----------------------------------------------------------------------------

" EDITOR
" ----------------------------------------------------------------------------
set nocompatible            " Use vim like it's 2017
set number                  " Line numering
set tabstop=4
set shiftwidth=4
set expandtab

" Searching {{{

set hlsearch                " Highlight searsh results
set incsearch               " Set incremental search
nnoremap <silent> <ESC> :nohlsearch<BAR>:echo<CR>
" }}}


" Misc {{{
set modelines=1

map <leader>s :source ~\.vimrc<CR>
" }}}

" Folding {{{
set foldenable              " enable folding
set foldlevel=10            " open upto 10 levels by default
set foldnestmax=10          " 10 nested folds max
set foldmethod=indent       " fold based on indent

nnoremap <space> za         " space open/close folds
" }}}

" Plugins {{{
execute pathogen#infect()

set laststatus=2
" }}}





" vim:foldmethod=marker:foldlevel=0
