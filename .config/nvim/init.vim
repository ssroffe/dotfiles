" VUNDLE PLUGIN STUFF
set nocompatible
filetype off

"" Vim-plug
let plug_install = 0
let autoload_plug_path = stdpath('config') . '/autoload/plug.vim'
if !filereadable(autoload_plug_path)
    silent exe '!curl -fL --create-dirs -o ' . autoload_plug_path . 
        \ ' https://raw.github.com/junegunn/vim-plug/master/plug.vim'
    execute 'source ' . fnameescape(autoload_plug_path)
    let plug_install = 1
endif
unlet autoload_plug_path

call plug#begin('~/.vim/autoload/plugins')
Plug 'VundleVim/Vundle.vim'
Plug 'dylanaraps/wal.vim'
Plug 'kien/rainbow_parentheses.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-abolish'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'ludovicchabant/vim-gutentags'
call plug#end()

if plug_install
    PlugInstall --sync
endif
unlet plug_install
    
"colorscheme wal
let g:python_highlight_all = 1

" set new c syntax highlighting
" autocmd BufNewFile,BufRead *.c source ~/.vim/c.vim

" Rainbow parentheses
let g:rainbow_active = 1
"autocmd VimEnter * RainbowToggleOn

" syntax processing
syntax enable
set termguicolors

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

" Live view of substitutions
set inccommand=nosplit

" Terminal mode
tnoremap <ESC> <C-\><C-n>

" Reload files changed outside of vim
set autoread

" Nerd Commenter
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

"" Auto run test code
" Run python with <F12>
autocmd FileType python nnoremap <buffer> <F12> :exec '!python' shellescape(@%,1)<cr>
" Run make with <F12> allow for added commands after
autocmd FileType c nnoremap <buffer> <F12> :exec '!make'
autocmd FileType make nnoremap <buffer> <F12> :exec '!make'

" Set new leader key
let mapleader = ";"

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
noremap <leader>t :tabnew<cr>

" Commenter toggle
nmap <C-_> <leader>c<space>
vmap <C-_> <leader>c<space>


" Coc.vim stuff
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

set clipboard+=unnamedplus
set laststatus=2
set notermguicolors
let g:gutentags_enabled = 1
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
