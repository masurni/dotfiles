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

set tabstop=2
set shiftwidth=2
set ambiwidth=double

set scrolloff=15
set laststatus=2

set mouse=a

"保存時に行末の空白を除去する
autocmd BufWritePre * :%s/\s\+$//ge

nnoremap <silent><C-e> :NERDTreeToggle<CR>

nnoremap <C-]> g<C-]>

"以下dein の設定{{
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.config/nvim/dein')
  call dein#begin('$HOME/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('$HOME/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  "ここ変更加えたところ
  let s:plugins = '$HOME/.config/nvim/plugins.toml'
  let s:lazy = '$HOME/.config/nvim/lazy.toml'
  call dein#load_toml(s:plugins, {'lazy': 0})
  call dein#load_toml(s:lazy, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options =' -std=c++14'
"
"競プロモード
command! Comp source $HOME/.config/nvim/compVim/execute.vim

"プラグイン関係の読み込み
source $HOME/.config/nvim/initPlug.vim
