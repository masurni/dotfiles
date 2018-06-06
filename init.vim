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

set scrolloff=15

set mouse=a

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

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
highlight Normal ctermbg=NONE
highlight NonText ctermbg=NONE
highlight LineNr ctermbg=NONE
highlight Folded ctermbg=NONE
highlight EndOfBuffer ctermbg=NONE

"CompProMode
if isdirectory(expand('/home/masumi/compProVim'))
	command! Comp source /home/masumi/compProVim/execute.vim
endif
