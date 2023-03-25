set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax on
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber

call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'
Plug 'tanvirtin/monokai.nvim'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'jacoborus/tender.vim'
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'ryanoasis/vim-devicons'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'terryma/vim-multiple-cursors'

" Syntax
Plug 'sheerun/vim-polyglot'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Test
"


call plug#end()

colorscheme monokai_soda
" gruvbox, monokai monokai_pro monokai_soda monokai_ristretto,
" dracula, tokyonight tokyonight-night tokyonight-storm tokyonight-day
" tokyonight-moon, catppuccin-latte catppuccin-frappe catppuccin-macchiato 
" catppuccin-mocha, tender, moonfly

let mapleader=" "
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>> 10<C-w>>
nmap <Leader>< 10<C-w><
nmap <C-j> 10<C-e>
nmap <C-k> 10<C-y>
