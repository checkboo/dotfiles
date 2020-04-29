set nocompatible
set termguicolors
set hidden
set nobackup
set nowritebackup
filetype off
syntax on

set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes

colorscheme synthwave

set clipboard+=unnamedplus

" hybrid line numbers
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave *set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   *set norelativenumber
augroup END

" new tab shortcut
map <C-t> :tabnew<CR>

" cancel search highlighting
map <Esc> :nohlsearch<CR>

" switch buffers
map <g><t> :bNext<CR>
map <G><t> :bprevious<CR>

" indetation
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

" plugins
call plug#begin('~/.config/nvim/plugged')
  Plug 'kien/ctrlp.vim'
  Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
  Plug 'lifepillar/vim-solarized8'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'neowit/vim-force.com'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'
  Plug 'dyng/ctrlsf.vim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'frazrepo/vim-rainbow'
  Plug 'vimwiki/vimwiki'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
call plug#end()

" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" CtrlP ignore
let g:ctrlp_custom_ignore = 'node_modules\|DS_STORE\|git'

" airline theme
let g:airline_theme='kolor'

" airline tab numbers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" SFDX shortcuts
map <C-S> :!sfdx force:source:push<CR>
map <C-D> :!sfdx force:source:deploy -u Aura_superbadge -x manifest/package.xml<CR>

" vim org-mode
filetype plugin indent on

" vim-rainbow
let g:rainbow_active = 1
