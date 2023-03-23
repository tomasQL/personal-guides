set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
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

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

call plug#end()

colorscheme dracula

let mapleader=" "
let NERDTreeQuitOnOpen=1

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
