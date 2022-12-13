#!/usr/bin/bash

configure_minimal() {
    cp .tmux.conf ~/
    tmux source-file ~/.tmux.conf

    mkdir -p ~/.config/nvim
    # copy wholesale
    for f in `find . -regex ".*\.vim$\|.*\.lua$"`;do
        rm -rf ~/.config/nvim/$f
        cp $f ~/.config/nvim/$f
    done
}

configure_minimal
if [ $? -eq 0 ]
then
	echo "Minimal configuration ... OK"
else
	echo "Error during minimal configuration..." 
fi

