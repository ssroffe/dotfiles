" VUNDLE PLUGIN STUFF
set nocompatible
filetype off

" START - Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/Vundle.vim/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :PluginInstall
endif
" END - Setting up Vundle - the vim plugin bundler
" Run :PluginInstall to install things
" For youcompleteme, run .vim/bundle/youcompleteme/install.py
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'dylanaraps/wal.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-abolish'
call vundle#end()

filetype plugin indent on

"" DONE WITH VUNDLE PLUGIN STUFF

"colorscheme wal
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
let NERDTreeQuitOnOpen=1
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

"" Auto run test code
" Run python with <F12>
autocmd FileType python nnoremap <buffer> <F12> :exec '!python3' shellescape(@%,1)<cr>
" Run make with <F12> allow for added commands after
autocmd FileType c nnoremap <buffer> <F12> :exec '!make'
autocmd FileType make nnoremap <buffer> <F12> :exec '!make'
" Javascript
autocmd FileType javascript nnoremap <buffer> <F12> :exec '!node' shellescape(@%,1)<cr>
autocmd FileType sh nnoremap <buffer> <F12> :exec '!bash' shellescape(@%,1)<cr>


set clipboard=unnamedplus
set laststatus=2
