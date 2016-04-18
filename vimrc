set number
set tabstop=2 expandtab shiftwidth=2
set smarttab autoindent 
set smartindent
set pastetoggle=<F12>
set showmatch
set statusline=%{fugitive#statusline()}
set hidden
set hlsearch
:noremap <F4> :set hlsearch! hlsearch?<CR>
" clear console after leaving vim
au VimLeave * :!clear
" for mapping enter key removing conflicts with os
:autocmd CmdwinEnter * nnoremap <CR> <CR>
:autocmd BufReadPost quickfix nnoremap <CR> <CR>
" auto reloading vimrc file
autocmd! bufwritepost .vimrc source %

:let mapleader=" "
:nnoremap <leader>w :w<CR>
:nnoremap <leader>q :wq<CR>
:nnoremap H ^
:nnoremap L g_
:nnoremap gj <C-D>
:nnoremap gk <C-U>
map tt :NERDTreeToggle<CR>
"commandt settings
let g:CommandTSmartCase=1
let g:CommandTCancelMap='<S-t>'

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Command-T plugin
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kchmck/vim-coffee-script'
Plugin 'JulesWang/css.vim' 
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'ervandew/supertab'
Plugin 'git://github.com/jiangmiao/auto-pairs.git'
Plugin 'vim-ruby/vim-ruby'

Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" plugin for solarized theme

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " req

"solarized color theme
syntax enable
set background=dark
let g:solarized_termcolors=16
colorscheme solarized

