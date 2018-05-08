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
call plug#begin('~/.local/share/nvim/plugged')
 Plug 'scrooloose/nerdcommenter'
 Plug 'tpope/vim-surround'
 Plug 'kien/ctrlp.vim'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'christoomey/vim-tmux-navigator'
 Plug 'nvie/vim-flake8'
 " Awesome Git Plugin
 Plug 'tpope/vim-fugitive'
 " Extension to Fugitive to make :Gbrowse work
 Plug 'tpope/vim-rhubarb'
 " Extenstion that makes moving through the quickfix window made easy
 Plug 'tpope/vim-unimpaired'
 Plug 'scrooloose/syntastic'
 Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
 Plug 'zchee/deoplete-jedi'
 Plug 'tomasr/molokai'
 Plug 'airblade/vim-gitgutter'
" Dependency for vim-easyclip
 Plug 'tpope/vim-repeat'
 Plug 'svermeulen/vim-easyclip'
" Initialize plugin system
call plug#end()

"added by KHV
set t_Co=256
"enable deoplete
let g:deoplete#enable_at_startup = 1
"enable deoplete jedi docstring in preview window
let g:deoplete#sources#jedi#show_docstring = 1
"remap keys for selecting next and previous suggestions in popup menu
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

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
	autocmd filetype python set expandtab
	autocmd filetype html,xml set listchars-=tab:>.<Paste>
	autocmd BufReadPost fugitive://* set bufhidden=delete
endif

"set utf8 encoding
set encoding=utf-8

let NERDTreeIgnore=['\.pyc$', '\-$'] "ignore .pyc files in NERDTree

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
