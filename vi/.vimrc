
"set rtp+=~/.vim/bundle/Vundle.vim
"
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"call vundle#end()            " required
"filetype off                 " required
"filetype plugin indent on    " required

set nocompatible        " be iMproved, required
set number              " Display line numbers on the left side
set ls=2                " This makes Vim show a status line even when only one window is shown
set shiftwidth=4        " Set shiftwidth to control how many columns text is indented with the reindent operations (<< and >>) and automatic C-style indentation.
set tabstop=4           " Set tabstop to tell vim how many columns a tab counts for. Linux kernel code expects each tab to be eight columns wide.
set expandtab           " When expandtab is set, hitting Tab in insert mode will produce the appropriate number of spaces.

set softtabstop=4       " Set softtabstop to control how many columns vim uses when you hit Tab in insert mode. If softtabstop is less than tabstop and expandtab is not set, vim will use a combination of
                        " tabs and spaces to make up the desired spacing. If softtabstop equals tabstop and expandtab is not set,
                        " vim will always use tabs. When expandtab is set, vim will always use the appropriate number of spaces.
set nowrap              " Don't Wrap lines!
set nocp                " This changes the values of a LOT of options, enabling features which are not Vi compatible but really really nice
set autoindent          " Automatic indentation
set cindent             " This turns on C style indentation
set si                  " Smart indent
set showmatch           " Show matching brackets
set hlsearch            " Highlight in search
"set foldmethod=indent   " Set folding method
set ignorecase          " Ignore case in search
set noswapfile          " Avoid swap files
set mouse=a             " Mouse Integration
set clipboard^=unnamed,unnamedplus

autocmd FileType make setlocal noexpandtab " Don't mess up my Makefiles

syntax on
syntax enable

colorscheme molokai

let g:load_doxygen_syntax=1
let g:airline#extensions#tabline#enabled = 1

" Mark whitespaces
au BufRead,BufNewFile * match BadWhitespace /\s\+$/
highlight BadWhitespace ctermbg=red guibg=darkred
