#!/bin/sh
if ! grep XDG_CONFIG_HOME $HOME/.bashrc > /dev/null; then
	echo "export XDG_CONFIG_HOME=$HOME/.config" >> $HOME/.bashrc
	. $HOME/.bashrc
fi
ln -sf ${PWD}/init.vim     $XDG_CONFIG_HOME/nvim/init.vim
ln -sf ${PWD}/initPlug.vim $XDG_CONFIG_HOME/nvim/initPlug.vim
ln -sf ${PWD}/plugins.toml $XDG_CONFIG_HOME/nvim/plugins.toml
ln -sf ${PWD}/lazy.toml    $XDG_CONFIG_HOME/nvim/lazy.toml
