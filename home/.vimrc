" VUNDLE PLUGIN STUFF
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
call vundle#end()

filetype plugin indent on

"" DONE WITH VUNDLE PLUGIN STUFF

colorscheme wal
let g:python_highlight_all = 1

" set new c syntax highlighting
" autocmd BufNewFile,BufRead *.c source ~/.vim/c.vim

" Rainbow parentheses
let g:rainbow_active = 1
"autocmd VimEnter * RainbowToggleOn

" syntax processing
syntax enable

" Nerd tree file browsing
map <C-n> :NERDTreeToggle<CR>
" nerd tree open directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" tabs and spaces
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" interface
set number
set showcmd
set wildmenu

set showmatch

" underline current line
set cursorline
hi clear CursorLine
hi CursorLine gui=underline cterm=underline

" searching
set incsearch
set ignorecase " Ignore case when searching...
set smartcase  " ... unless we type a capital

" enable folding
set foldenable
set foldlevelstart=99
set foldnestmax=10

nnoremap <space> za

set foldmethod=indent

" movement
nnoremap j gj
nnoremap k gk
nnoremap x "_x

" avoid escape key
inoremap jk <ESC>

" mouse
set mouse=a

" Reload files changed outside of vim
set autoread

" Nerd Commenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

set clipboard=unnamedplus
set laststatus=2
