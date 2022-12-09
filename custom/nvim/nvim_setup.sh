#!/usr/bin/bash

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
	echo "Vim Configuration finished!"
else
	echo "Error during vim configuration..." 
fi
