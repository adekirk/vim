" .vimrc

" Pathogen {{{
execute pathogen#infect()
" }}}

" Colors {{{
syntax on
color dracula
colorscheme default
set background=dark
if has('gui_running')
    set background=light
else
    set background=dark
endif
" }}}
" Editor {{{
set nowrap                                              " no line wrap
" }}}
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
set wildmenu                                            " visual autocomplete for command menu
set lazyredraw                                          " only redraw when needed, not in macros
set showmatch                                           " highlight matching [{()}]
set noshowmode                                          " hide --INSERT-- in status, displayed in airline
" }}}
" Searching {{{
set hlsearch                                            " Highlight searsh results
set incsearch                                           " Set incremental search
" }}}
" ESC hides search highlight {{{
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

map <leader>s :source ~\.vimrc<CR>                      " \s reloads .vimrc
" }}}
" Folding {{{
set foldenable              " enable folding
set foldlevel=10            " open upto 10 levels by default
set foldnestmax=10          " 10 nested folds max
set foldmethod=indent       " fold based on indent

nnoremap <space> za
" }}}
" netrw {{{
let g:netrw_liststyle = 1       " Explorer list style = Detailed
let g:netrw_banner = 0          " Hide banner
let g:netrw_browse_split = 3    " Open files in new tab
let g:netrw_winsize = 33        " 33%

fun! VexToggle(dir)
    if exists("t:vex_buf_nr")
        call VexClose()
    else
        call VexOpen(a:dir)
    endif
endf

fun! VexOpen(dir)
    let g:netrw_browse_split=4
    execute "Vexplore " . a:dir
    let t:vex_buf_nr = bufnr("%")
endf

fun! VexClose()
    let cur_win_nr = winnr()
    let target_nr = (cur_win_nr == 1 ? winnr("#") : cur_win_nr)

    1wincmd w
    close
    unlet t:vex_buf_nr

    execute (target_nr - 1) . "wincmd w"
    "call NormalizeWidths()
endf

noremap <Leader>` :call VexToggle("")<CR>
" }}}

" csv {{{
filetype plugin on
" }}}

" airline {{{
set laststatus=2                                        " additional status line for airline
let g:airline#extensions#tabline#enabled = 0
"let g:airline_powerline_fonts = 1
"let g:airline_section_z = airline#section#create_right(['%l','%c'])
" }}}


" vim:foldmethod=marker:foldlevel=0
