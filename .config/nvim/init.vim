" Set recursive path on root path
set path+=**

" Set leader button to comma
let mapleader=" "

" Enable mouse usage
set mouse=a

" Turn off vi compatibility mode
set nocompatible

" Enable relative numbers
set number relativenumber

" Enable menu for autocompletion
set wildmenu
set wildmode=longest:full,full

" Set tab witdh
set tabstop=2

" Convert tab spaces to 2
set shiftwidth=2

" Show line length marker
set colorcolumn=88

" Disable ALE LSP features (CoC will handle it)
let g:ale_disable_lsp = 1

" Save file
map <leader>w :w<cr>

" Save and close file
map <leader>x :x<cr>

" Copy to clipboard
vnoremap  <leader>y "+y
nnoremap  <leader>Y "+yg_
nnoremap  <leader>y "+y
nnoremap  <leader>yy "+yy

" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Keep editor centered vertically
set scrolloff=9999

call plug#begin('~/.config/nvim/plugged')

" Vim surround
Plug 'tpope/vim-surround'

" Fuzzy Finder fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Auto highlighting for intra-line travel
Plug 'unblevable/quick-scope'

" COC for autocomplete and intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" ALE for asynchronous linting
Plug 'dense-analysis/ale'

call plug#end()


" Open FZF on Git tracked files
map <C-p> :GFiles<CR>

" Remove highlighting on ESC
nnoremap <esc> :noh<return><esc>

source $HOME/.config/nvim/plug-config/coc.vim

" Enable ALE linters
let g:ale_linters = {"python": ["flake8", "mypy"]}
let g:ale_fixers = {"python": ["black", "isort"]}
let g:ale_fix_on_save = 1

