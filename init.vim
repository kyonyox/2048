let g:python3_host_prog = '/Users/jyzhang/.pyenv/neovim/bin/python'
"let g:ale_python_flake8_executable = '/Users/jyzhang/.pyenv/neovim/bin/flake8'

call plug#begin('~/.vim/plugged')
 
"Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-surround'
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'

"Plug 'w0rp/ale'

"let g:ale_linters = {
"\   'c++': ['clang'],
"\   'python': ['flake8'],
"\}

"let g:ale_fixers = {
"\	'python': ['remove_trailing_lines', 'trim_whitespace', 'isort', 'ale#fixers#generic_python#BreakUpLongLines', 'yapf'],
"\}

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

"Plug 'zchee/deoplete-jedi'

call plug#end()

syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set hlsearch
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set number
set cursorline
set termguicolors
set background=dark
colorscheme solarized8

let mapleader=','
let g:mapleader=','
inoremap jj <Esc>`^
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>
nmap ,v :NERDTreeFind<cr>
nmap ,g :NERDTreeToggle<cr>
