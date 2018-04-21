syntax on
"colorscheme railscasts

set clipboard+=unnamedplus
set nobackup
set noswapfile
set autoread
set hidden
set showcmd

set number
set cursorline
hi clear CursorLine
set autoindent
set smartindent
set showmatch
set whichwrap=b,s,h,l,<,>,[,]

set tabstop=4
set shiftwidth=4
set ambiwidth=double

set scrolloff=15
set laststatus=2

set mouse=a

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge
