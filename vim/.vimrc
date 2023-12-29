set nocompatible	" be improved, required
filetype off		" required
let mapleader = ","

" polygot, we use editorconfig for this
let g:polyglot_disabled = ['autoindent']

"" enable fzf
set rtp+=/usr/bin/fzf

call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'sheerun/vim-polyglot' " language packs/highlights code
Plug 'itchyny/lightline.vim'
Plug 'ludovicchabant/vim-gutentags' " create tags :tag function
Plug 'tpope/vim-vinegar' "enchant netgw :Explore
Plug 'jiangmiao/auto-pairs'
Plug 'bling/vim-bufferline'
call plug#end()

" keybindings
noremap <leader>w :w<cr>
noremap <F6> :BuffergatorToggle<CR>
noremap <F7> :Explore<CR>
noremap <F8> :TagbarToggle<CR>
noremap <F9> :UndotreeToggle<CR>
noremap <F10> :tabnext<CR>
noremap <F11> :tabclose<CR>

map <leader>r :NERDTreeFind<cr>

"colorscheme catppuccin catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
colorscheme catppuccin-macchiato
"set colorcolumn=80

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
set background=dark
syntax on
set expandtab "use spaces not tabs
set encoding=utf-8
set number
set t_Co=256
set t_ut=
set updatetime=300
set signcolumn=yes

if (has("termguicolors"))
    set termguicolors
endif

" Plugin settings

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" delimitmate
let delimitMate_matchpairs = "(:),[:],{:}"

" netrw
"let g:netrw_winsize = 25

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
\ }

" undotree
set undodir=~/.config/vim/undo/
set undofile

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes
