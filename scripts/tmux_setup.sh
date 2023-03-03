#!/usr/bin/bash

configure_tmux() {
    cp .tmux.conf ~/
    tmux source-file ~/.tmux.conf
}

configure_tmux
if [ $? -eq 0 ]
then
	echo "Tmux Configuration finished!"
else
	echo "Error during tmux configuration..." 
fi
