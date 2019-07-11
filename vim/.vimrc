set nocompatible              " be iMproved, required
filetype off                  " required

" enable fzf
set rtp+=/usr/bin/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe' -- need to get the clang working
Plugin 'flazz/vim-colorschemes'
"Plugin 'wolfgangmehner/lua-support'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'airblade/vim-gitgutter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

syntax on

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

" various settings
set autoindent                 " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start " Proper backspace behavior.
set hidden                     " Possibility to have more than one unsaved buffers.
set incsearch                  " Incremental search, hit `<CR>` to stop.
set ruler                      " Shows the current line number at the bottom-right
                               " of the screen.
set wildmenu                   " Great command-line completion, use `<Tab>` to move
set encoding=utf-8
                               " around and `<CR>` to validate

" colors
"colorscheme molokai
colorscheme Dim2
"colorscheme nordisk

" show line numbers
set number

" dont insert template scripts from lua-support plugin
let g:Lua_InsertFileProlog = 'no'

" for lightline
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" git gutter update
set updatetime=100

" mappings
nnoremap <C-o> :NERDTree<CR>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nmap <F8> :TagbarToggle<CR>
