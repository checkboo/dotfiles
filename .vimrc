set nocompatible
filetype off
syntax on
colorscheme molokai

set autoindent
set cmdheight=2
set backspace=indent,eol,start
set hlsearch
set incsearch
set ignorecase
set textwidth=0
set autoread
set ruler
set nu
set showmatch
set shiftwidth=2
set tabstop=2
set expandtab
set gfn=Courier\ 12
set t_Co=256
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-surround'
Bundle 'msanders/snipmate.vim'
Bundle 'walm/jshint.vim'
Bundle 'mattn/zencoding-vim'

let g:ctrlp_working_path_mode = 0
