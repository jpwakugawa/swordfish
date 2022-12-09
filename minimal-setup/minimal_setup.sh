#!/usr/bin/bash

configure_tmux() {
    cp .tmux.conf ~/.config/
    tmux source-file ~/.config/.tmux.conf
}

configure_tmux
if [ $? -eq 0 ]
then
	echo "Tmux configuration ... OK"
else
	echo "Error during tmux configuration..." 
fi

configure_nvim() {
    mkdir -p ~/.config/nvim/after/plugin
    mkdir -p ~/.config/nvim/lua/config

    # copy wholesale
    for f in `find . -regex ".*\.vim$\|.*\.lua$"`;do
        rm -rf ~/.config/nvim/$f
        cp $f ~/.config/nvim/$f
    done
}

configure_nvim
if [ $? -eq 0 ]
then
	echo "Vim configuration ... OK"
    echo "Minimal Setup Finished!"
else
	echo "Error during vim configuration..." 
fi

