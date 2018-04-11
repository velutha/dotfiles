set number
set tabstop=2 expandtab shiftwidth=2
set smarttab autoindent smartindent
set wildmenu
set showmatch
set pastetoggle=<F12>
set statusline=%{fugitive#statusline()}
set laststatus=2
set hidden
set hlsearch
set modifiable
set foldenable
set foldmethod=syntax
set foldlevelstart=10
:noremap <F4> :set hlsearch! hlsearch?<CR>
" clear console after leaving vim
au VimLeave * :!clear
" for mapping enter key removing conflicts with os
:autocmd CmdwinEnter * nnoremap <CR> <CR>
:autocmd BufReadPost quickfix nnoremap <CR> <CR>
" auto reloading vimrc file
autocmd! bufwritepost .vimrc source %

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"commandt settings
let g:CommandTSmartCase=1
let g:CommandTCancelMap='<S-t>'

:let mapleader=" "
:nnoremap <leader>w :w<CR>
:nnoremap <leader>q :wq<CR>
:nnoremap <leader>l :cn<CR>
:nnoremap <leader>h :nohl<CR>
:nnoremap <leader>e :lnext<CR>
:nnoremap <leader>s :SyntasticToggleMode<CR>
:nnoremap :g :Git
:nnoremap H ^
:nnoremap L g_
:nnoremap gj <C-D>
:nnoremap gk <C-U>
map tt :NERDTreeToggle<CR>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

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
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'davidhalter/jedi-vim'


Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" plugin for solarized theme

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " req

"solarized color theme
syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
