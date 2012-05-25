syntax on

set t_Co=256 "enable 256 colors in vim
" turn off vi support
set nocompatible
set background=dark

set autoindent
set smartindent
" 
set shiftwidth=4
set tabstop=4
" space instead of tab
set expandtab
set smarttab
set number      " line numbers on
"set ruler       " show line numbers on the bar
set showmatch   "show matching brackets
set backspace=indent,eol,start
set ignorecase "ignore case when searching
set incsearch "make search act like in modern browser
set showcmd "show command in status line
set mouse=a "enable mouse support in console
set pastetoggle=<F2> "paste and keep format
"inoremap {  {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap (  ()<Left>

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

"Nerd tree
let NERDChristmasTree=1
let NERDTreeWinSize=20

"colorscheme delek
"set background color
"highlight Normal ctermbg=234
highlight Normal ctermfg=231 "ctermbg=black
highlight LineNr guifg=grey50 ctermfg=180
highlight Number cterm=none ctermfg=196
highlight Operator cterm=bold ctermfg=214
highlight Type cterm=bold ctermfg=green
highlight Comment ctermfg=39
highlight String ctermfg=47
highlight Keyword cterm=bold ctermfg=yellow
highlight Conditional cterm=bold ctermfg=214
highlight Repeat cterm=bold ctermfg=214
highlight Character ctermfg=yellow
highlight PreProc cterm=bold ctermfg=45
highlight Constant cterm=bold ctermfg=1
highlight Statement cterm=bold ctermfg=yellow
highlight Function cterm=bold ctermfg=208

"map <C-c> "+y<CR>
