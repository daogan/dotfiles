""""""""""""""""""""""""""""""
" vundle setup
""""""""""""""""""""""""""""""

" source ~/.vim/bundles.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/neocomplcache.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" ctrlp file search
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'jistr/vim-nerdtree-tabs'

" Plugin 'fatih/vim-go'
" Plugin 'python-mode/python-mode'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""
" vim config
""""""""""""""""""""""""

filetype on
" filetype indent on
" enable filetype dectection and filetype specific plugin/indent
" filetype plugin indent on

syntax enable
syntax on

" no vi-compatile
" set nocompatible

set background=dark
set t_Co=256

set encoding=utf-8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Set to auto read when a file is changed from the outside
set autoread
" Set how many lines of history VIM has to remember
set history=1000

" Show line numbers
set number
" Show relative number to current line
set relativenumber
" Show current cursor position
set ruler
" Display status line
set laststatus=2

" Makes search act like search in modern browsers
set incsearch
" Highlight search matching
set hlsearch
" Case insensitive when searching
set ignorecase
" When searching try to be smart about cases
set smartcase

" Always set autoindenting on
set autoindent
set smartindent
" Expand tab to space
set expandtab
" Insert tabs on the start of a line according to context
set smarttab
" 4 space tab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Show incomplete cmds down the buttom
set showcmd
" Show matching brackets
set showmatch
" Turn on the WiLd menu (Tab comand completion)
set wildmenu
" vsplit in right
set splitright
" Set 5 lines to the cursor - when moving vertically using j/k
set scrolloff=5
" ignore these files while expanding wild chars
" set wildignore=*.o,*.pyc

" Toggle Paste mode on and off
set pastetoggle=<F2>
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Go up from current directory until it finds tags file
set tags=./tags;,tags;

" Remap leader key to , (default \)
let mapleader = ","
let g:mapleader = ","

" Python keyword highlight
let python_highlight_all = 1
" au FileType python syn keyword pythonDecorator True None False self
let g:pyindent_open_paren = ''

" cabbrev command aliases
" :W sudo saves the file
ca W w !sudo tee % > /dev/null
ca te tabedit
ca vh vert help
ca sv so ~/.vimrc
ca gb Gblame


"""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""

" Remap VIM 0 to first non-blank character
map 0 ^
" Remap - to $
map - $
" map space to page down
nnoremap <Space> <C-d>
" clear search highlights
nnoremap <leader>n :nohl<CR>
map <silent> <leader>ee :vs ~/.vimrc<cr>
" Toggle paste mode on and off
map <leader>p :setlocal paste!<cr>

" Easier way to move between split windows
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" navigate windows with meta(alt key) + arrows
map <M-Left> <c-w>h
map <M-Right> <c-w>l
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Left> <ESC><c-w>h
imap <M-Right> <ESC><c-w>l
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" navigate tabs with Alt+<number> (not working in gnome-terminal)
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-0> :tablast<CR>

" auto bracket completion
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {      {}<Left>
" inoremap {{     {
" inoremap {}     {}

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

" map Ctr-n to Ctr-] and move cursor to screen top
nnoremap <C-n> <C-]>zz
" nnoremap m *


"""""""""""""""""""""""""""
" Color customization
"""""""""""""""""""""""""""

colorscheme solarized
" colorscheme solarized, deus, zenburn, buddy, Papercolor

" custom color settings ---------------------
" colors may be subjected to terminal pallete settings
" highlight Normal ctermfg=255 ctermbg=234
" highlight LineNr guifg=grey50 ctermfg=245
" highlight Number cterm=none ctermfg=196
" highlight Operator cterm=bold ctermfg=214
" highlight Type cterm=bold ctermfg=green
" highlight Comment ctermfg=39
" highlight String ctermfg=47
" highlight Keyword cterm=bold ctermfg=yellow
" highlight Conditional cterm=bold ctermfg=214
" highlight Repeat cterm=bold ctermfg=214
" highlight Character ctermfg=yellow
" highlight PreProc cterm=bold ctermfg=45
" highlight Constant cterm=bold ctermfg=1
" highlight Statement cterm=bold ctermfg=yellow
" highlight Function cterm=bold ctermfg=208
" highlight Search cterm=NONE ctermfg=NONE ctermbg=23
highlight VertSplit cterm=None ctermfg=242 ctermbg=NONE
highlight CursorLineNr guifg=grey50 ctermfg=248
" highlight ExtraWhitespace ctermbg=52 guibg=52

" match ExtraWhitespace /\s\+$/

""""""""""""""""""""""""""
" Plugin settings
""""""""""""""""""""""""""

" NeoComplCache ------------------------------


" YouCompleteMe ------------------------------
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1


" NERDTree -----------------------------

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" enable line numbers
" let NERDTreeShowLineNumbers=1

" NERDCOMMENTER ------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_python = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Airline ------------------------------

let g:airline_powerline_fonts = 0
let g:airline_theme = 'serene'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 0
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" CtrlP --------------------------------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" EasyMotion ---------------------------

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-s2)
" <Leader>f{char} to move to {char}
nmap <Leader>f <Plug>(easymotion-f)
nmap <Leader>F <Plug>(easymotion-F)
" Move to line (j downward, i upward)
nmap <Leader>j <Plug>(easymotion-j)
nmap <Leader>k <Plug>(easymotion-k)
" Move to word
nmap <Leader>w <Plug>(easymotion-w)
nmap <Leader>e <Plug>(easymotion-e)
nmap <Leader>b <Plug>(easymotion-b)
nmap <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>j <Plug>(easymotion-bd-jk)

" auto-pair ---------------------------
" let g:AutoPairsUseInsertedCount = 1

" delimitMate ------------------------
let delimitMate_expand_cr = 1
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

" Open NERDTree on console vim startup.
let g:nerdtree_tabs_open_on_console_startup = 1
