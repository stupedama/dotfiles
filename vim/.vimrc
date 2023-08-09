set nocompatible	" be improved, required
filetype off		" required

" enable fzf
set rtp+=/usr/bin/fzf

" keyboard timeout
set timeoutlen=50
set ttimeoutlen=5

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'scrooloose/nerdtree'
Plug 'mbbill/undotree'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'
Plug 'ycm-core/YouCompleteMe'
"Plug 'ervandew/supertab'
call plug#end()

" keybindings
noremap <leader>w :w<cr>
noremap <F7> :NERDTree<CR>
noremap <F8> :TagbarToggle<CR>
noremap <F9> :UndotreeToggle<CR>
noremap <F6> :BuffergatorToggle<CR>

" controls
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Plugin settings

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
\ }

" undotree
set undodir=~/.config/vim/undo/
set undofile

"colorscheme catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
colorscheme catppuccin-mocha

" various settings
syntax enable
filetype plugin indent on
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
"set background=dark
"syntax on
set expandtab "use spaces not tabs
set encoding=utf-8
set number
let mapleader = ","
set t_Co=256
set t_ut=

if (has("termguicolors"))
    set termguicolors
endif

