set nocompatible              " be iMproved, required
filetype off                  " required
set hlsearch
set incsearch
syntax on
set nu "enable line numbers


" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
 Plugin 'scrooloose/nerdtree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'tpope/vim-surround'
 Plugin 'kien/ctrlp.vim'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'christoomey/vim-tmux-navigator'
 Plugin 'Chiel92/vim-autoformat'
 Plugin 'sjl/gundo.vim'
 Plugin 'tmhedberg/SimpylFold'
 Plugin 'vim-scripts/indentpython.vim'
 Plugin 'nvie/vim-flake8'
 Plugin 'tpope/vim-fugitive'
 Plugin 'scrooloose/syntastic'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'tomasr/molokai'
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

"added by KHV
set t_Co=256

"syntastic
filetype plugin on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"set colorscheme to molokai
colorscheme molokai

"set clipboard
set clipboard+=unnamed

"let g:syntastic_python_python_exec = "python3"
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 1

"ctrl p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"airline
"display all buffers in statusline
let g:airline#extensions#tabline#enabled = 1
"set airline theme
let g:airline_theme='molokai'
"enable powerline fonts
let g:airline_powerline_fonts=0

"youcompleteme
"close suggestion window after something is selected
autocmd CompleteDone * pclose

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1

"tabs and auto indents for python files
"au BufNewFile,BufRead *.py
    "\ set tabstop=4
    "\ set softtabstop=4
    "\ set shiftwidth=4
    "\ set textwidth=79
    "\ set expandtab
    "\ set autoindent
    "\ set fileformat=unix

"tabs for js, html, css files
"au BufNewFile,BufRead *.js, *.html, *.css
    "\ set tabstop=2
    "\ set softtabstop=2
    "\ set shiftwidth=2

"mark extra whitespace as bad
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"set utf8 encoding
set encoding=utf-8

let NERDTreeIgnore=['\.pyc$', '\-$'] "ignore .pyc files in NERDTree

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"let python code look pretty
let python_highlight_all=1

"map space key to the leader
map <SPACE> <Leader>
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w!<CR>
nnoremap <Leader>W :wa!<CR>
nnoremap <Leader>q :q!<CR>
nnoremap <Leader>Q :qa!<CR>
nnoremap <Leader>x :x!<CR>
nnoremap <Leader>X :xa!<CR>
nnoremap <Leader>v :vsp 
nnoremap <Leader>h :sp 
nnoremap <Leader>9 10<C-W>-
nnoremap <Leader>0 10<C-W>+
nnoremap <Leader>[ 10<C-W><
nnoremap <Leader>] 10<C-W>>
nnoremap <Leader>= 10<C-W>=
nnoremap <Leader>r :source ~/.vimrc<CR>
nnoremap <Leader>k :bn<CR>
nnoremap <Leader>j :bp<CR>
nnoremap <Leader>l :b#<CR>
nnoremap <Leader>; :bd<CR>
nnoremap <Leader>e :e<SPACE>
nnoremap <Leader>I :Autoformat<CR>
nnoremap <Leader>< gg<G''
map <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
