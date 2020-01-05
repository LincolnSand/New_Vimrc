set nocompatible              " be iMproved, required

filetype off                  " required
syntax on
set ruler
set nowrap
set encoding=utf8
set laststatus=2
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set cursorline
set cursorcolumn
set number
set notermguicolors
set noshowmode
set t_Co=256
set background=dark

set spelllang=en_us
set spell

hi clear SpellBad
hi SpellBad cterm=NONE ctermbg=red ctermfg=white
hi clear SpellCap
hi SpellCap cterm=NONE ctermbg=darkyellow ctermfg=white
hi clear SpellLocal
hi SpellLocal cterm=NONE ctermbg=darkblue ctermfg=white
hi clear SpellRare
hi SpellRare cterm=NONE ctermbg=blue ctermfg=white

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins for rust coding
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'


Plugin 'Valloric/YouCompleteMe'
Plugin 'dense-analysis/ale'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap gt <Plug>(rust-def-tab)
au FileType rust nmap <leader>gd <Plug>(rust-doc)
