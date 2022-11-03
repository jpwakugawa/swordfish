NVIM_FOLDER=~/.config/nvim

configure_nvim(){
	# Check if nvim folder exists
	if [ ! -d $NVIM_FOLDER ] 
	then
		mkdir -p "$NVIM_FOLDER"
	fi

	# Copy the configuration file
	cp init.lua ~/.config/nvim/
}

configure_nvim
if [ $? -eq 0 ]
then
	echo "Configuration finished!"
else
	echo "Error during configuration..." 
fi
