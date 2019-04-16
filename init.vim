set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set clipboard=unnamed,unnamedplus

set number
set autoindent
set smartindent
set showmatch
set whichwrap=b,s,h,l,<,>,[,]

set expandtab
set tabstop=4
set shiftwidth=4
set ambiwidth=single

set nowrap
set scrolloff=999
set sidescrolloff=999

set mouse=a

let g:tex_fast=""

"保存時に行末の空白を除去する
augroup EraseSpaceAtEndOfLine
autocmd!
autocmd BufWritePre * if &ft != "markdown" && &ft != "tex"|:%s/\s\+$//ge|endif
augroup END

"ターミナルモードを <C-[> で抜けられるようにする
tnoremap <ESC> <C-\><C-n>

"カーソルを表示行で移動
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up>   gk

"プラグイン関係はこっち
source $XDG_CONFIG_HOME/nvim/initPlug.vim

"vimの背景を端末の背景と同じにする
"highlight Normal ctermbg=NONE
"highlight NonText ctermbg=NONE
"highlight LineNr ctermbg=NONE
"highlight Folded ctermbg=NONE
"highlight EndOfBuffer ctermbg=NONE

"CompProMode
if isdirectory(expand('/home/masumi/compProVim'))
    command! Comp source /home/masumi/compProVim/execute.vim
endif

if filereadable('.config.vim')
    source .config.vim
endif
