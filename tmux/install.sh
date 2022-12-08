#!/usr/bin/bash

configure_tmux() {
    cp .tmux.conf ~/.config/
    tmux source-file ~/.config/.tmux.conf
}

configure_tmux
if [ $? -eq 0 ]
then
	echo "Tmux Configuration finished!"
else
	echo "Error during tmux configuration..." 
fi
