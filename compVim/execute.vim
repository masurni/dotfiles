echo "競プロモード始動！！！"
e $HOME/.config/nvim/compVim/main.cpp
rightbelow 15sp
e $HOME/.config/nvim/compVim/in.txt
wincmd k

augroup saveAndCompile
	autocmd!
	autocmd BufWritePost main.cpp call SaveAndCompile()
augroup END

autocmd saveAndCompile BufWritePost main.cpp call SaveAndCompile()

let g:neosnippet#snippets_directory='$HOME/.config/nvim/mySnippets'

function! SaveAndCompile ()
	wincmd j
	wincmd l
	w
	wincmd k
	QuickRun <$HOME/.config/nvim/compVim/in.txt
				\ -outputter/buffer/split ":wincmd j | vs"
				\ -command "g++"
				\ -cmdopt "-std=c++14"
				\ -hook/time 1
endfunction


syn keyword cConstant INF MOD EPS
syn keyword	cRepeat		rep range
