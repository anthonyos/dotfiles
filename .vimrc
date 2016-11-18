" Automatic reloading of .vimrc 
autocmd! bufwritepost .vimrc source %

" Enable pathogen for easy vim plugin management.
execute pathogen#infect()

" Enable syntax highlighting.
syntax enable

" Set compatibility mode off, ensures you get the improvements of vim
set nocompatible

" Set autoindent to tell vim to indent at same level on next line
set autoindent

" Set updatetime to shorter than default, in ms (for gitgutter signs)
set updatetime=250

" Set autoindent to indent correctly based on filetype, for fn's etc.
filetype plugin indent on

" Set the leader key to something other than the default: '\'.
let mapleader=","

" Swap ; and :
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" Set max line length to 79 characters for python files
autocmd FileType python setlocal textwidth=79 

" Better copy and paste
set pastetoggle=<F2>
set clipboard=unnamed

" Mouse and backspace
set mouse=a 	" on OSX press ALT and click
set bs=2 	" make backspace behave like normal again if problem

" Easier moving of code blocks
vnoremap < <gv " better indentation
vnoremap > >gv " better indentation

" Show line numbers and length
set number " show line numbers

" Apparently real programmers don't use TABs but spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Set search options
set incsearch " sets cursor to highlight match while typing
set hlsearch " sets highlighting of matches

set background=dark
colorscheme solarized

" Faster shortcut for commenting using the T-Comment plugin
map <leader>c <c-_><c-_>

" Disable arrow keys in normal and insert modes - should only use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Ensure status line from vim-airline always shows
set laststatus=2

" Populate dictionary with powerline symbols for vim-airline
let g:airline_powerline_fonts=1

" Set vim-airline theme to use solarized dark theme
let g:airline_theme='solarized'

" Enable 256 colours
set t_Co=256

"""""""""""""""""""""""""""""
"""""""PLUGIN SETTINGS"""""""
"""""""""""""""""""""""""""""

" Recommended settings for syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" YouCompleteMe plugin settings to auto-close top preview window
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" gitgutter plugin settings
" always show signs gutter
let g:gitgutter_sign_column_always = 1
