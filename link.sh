#!/bin/sh
if ! grep XDG_CONFIG_HOME $HOME/.bashrc > /dev/null; then
	echo "export XDG_CONFIG_HOME=$HOME/.config" >> $HOME/.bashrc
	. $HOME/.bashrc
fi
ln -sf ${PWD}/init.vim $XDG_CONFIG_HOME/nvim/init.vim
