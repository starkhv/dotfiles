set nocompatible              " be iMproved, required
filetype off                  " required
set hlsearch
set incsearch
syntax on
set nu "enable line numbers
set relativenumber "set relative line numbers
set splitbelow "horizontal split opens new file in bottom, this also affects location of preview window
"prefer git instead of annoying swap files
set splitright
set nobackup
set noswapfile
set hidden	  "allow opening another file while there is unsaved file in buffer
"set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                    " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                    "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                    "    shiftwidth, not tabstop
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
" highlight whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
set pastetoggle=<F2>	 " disable paste smartness :)
" more useful cursor shapes and colors
set guicursor=n-v-c:block-Cursor/lCursor-blinkon500,i-ci:ver25-Cursor/lCursor-blinkon500,r-cr:hor20-Cursor/lCursor
au VimLeave * set guicursor=a:ver25-blinkon500
" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
 Plugin 'VundleVim/Vundle.vim'
"
 "Plugin 'scrooloose/nerdtree'
 "Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'tpope/vim-surround'
 Plugin 'kien/ctrlp.vim'
 Plugin 'vim-airline/vim-airline'
 Plugin 'vim-airline/vim-airline-themes'
 Plugin 'christoomey/vim-tmux-navigator'
 "Plugin 'Chiel92/vim-autoformat'
 "Plugin 'sjl/gundo.vim'
 "Plugin 'tmhedberg/SimpylFold'
 "Plugin 'vim-scripts/indentpython.vim'
 Plugin 'nvie/vim-flake8'
 " Awesome Git Plugin
 Plugin 'tpope/vim-fugitive'
 " Extension to Fugitive to make :Gbrowse work
 Plugin 'tpope/vim-rhubarb'
 " Extenstion that makes moving through the quickfix window made easy
 Plugin 'tpope/vim-unimpaired'
 Plugin 'scrooloose/syntastic'
 Plugin 'Shougo/deoplete.nvim'
 Plugin 'zchee/deoplete-jedi'
 Plugin 'tomasr/molokai'
 Plugin 'SirVer/ultisnips'
 Plugin 'honza/vim-snippets'
 Plugin 'jgdavey/tslime.vim'
 Plugin 'airblade/vim-gitgutter'
" Dependency for vim-easyclip
 Plugin 'tpope/vim-repeat'
 Plugin 'svermeulen/vim-easyclip'
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
"set neovim as the strategy form vim-test
let test#strategy = 'neovim'
"enable deoplete
let g:deoplete#enable_at_startup = 1
"enable deoplete jedi docstring in preview window
let g:deoplete#sources#jedi#show_docstring = 1
"remap keys for selecting next and previous suggestions in popup menu
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"ULTISNIPS
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-SPACE>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"set default ultisnips directories
let g:UltiSnipsSnippetDirectories = ['~/dotfiles/UltiSnips']

"syntastic
filetype plugin on
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"show current git branch 
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"set colorscheme to molokai
colorscheme molokai

"set clipboard
set clipboard=unnamed

"let g:syntastic_python_python_exec = "python3"
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 1

"ctrl p
"let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"airline
"display all buffers in statusline
let g:airline#extensions#tabline#enabled = 1
"set airline theme
let g:airline_theme='molokai'
"enable powerline fonts
let g:airline_powerline_fonts=0

if has('autocmd')
	"youcompleteme
	"close suggestion window after something is selected
	autocmd CompleteDone * pclose

	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	autocmd filetype python set expandtab
	autocmd filetype html,xml set listchars-=tab:>.<Paste>
	autocmd BufReadPost fugitive://* set bufhidden=delete
endif

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
nnoremap <Leader>r :source ~/dotfiles/vimrc<CR>
nnoremap <Leader>j :bn<CR>
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>l :b#<CR>
nnoremap <Leader>; :bd<CR>
nnoremap <Leader>e :e<SPACE>
nnoremap <Leader>e :e<SPACE>
nnoremap <Leader>e :e<SPACE>
nnoremap <Leader>n <plug>EasyClipSwapPasteForward
nnoremap <Leader>p <plug>EasyClipSwapPasteBackwards
