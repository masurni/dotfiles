if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/masumi/.config/nvim/init.vim', '/home/masumi/.config/nvim/plugins.toml', '/home/masumi/.config/nvim/lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/masumi/.config/nvim/dein'
let g:dein#_runtime_path = '/home/masumi/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/masumi/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/masumi/.config/nvim,/etc/xdg/xdg-ubuntu/nvim,/usr/share/upstart/xdg/nvim,/etc/xdg/nvim,/home/masumi/.local/share/nvim/site,/usr/share/ubuntu/nvim/site,/usr/share/gnome/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/var/lib/snapd/desktop/nvim/site,/home/masumi/.config/nvim/dein/repos/github.com/Shougo/dein.vim,/home/masumi/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/runtime,/home/masumi/.config/nvim/dein/.cache/init.vim/.dein/after,/var/lib/snapd/desktop/nvim/site/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/gnome/nvim/site/after,/usr/share/ubuntu/nvim/site/after,/home/masumi/.local/share/nvim/site/after,/etc/xdg/nvim/after,/usr/share/upstart/xdg/nvim/after,/etc/xdg/xdg-ubuntu/nvim/after,/home/masumi/.config/nvim/after'
filetype off
autocmd dein-events InsertEnter * call dein#autoload#_on_event("InsertEnter", ['deoplete.nvim', 'neosnippet'])
