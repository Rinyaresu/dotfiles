nmap <F6> :NERDTreeToggle<CR>

set nocompatible
set autoread
set number
set shiftwidth=2
set tabstop=2
set cursorline
syntax enable

call plug#begin('~/.vim/plugged')
  Plug 'itchyny/lightline.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'preservim/nerdtree'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'vim-ruby/vim-ruby'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-endwise'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'ryanoasis/vim-devicons' 
  Plug 'vim-airline/vim-airline'
  Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
call plug#end()

let g:coc_global_extensions = ['coc-solargraph']

