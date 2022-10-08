NVIM_FOLDER="~/.config/nvim"

# Check if nvim folder exists
[ ! -d "$NVIM_FOLDER" ] && mkdir ~/.config/nvim

# Copy the configuration file
cp ./init.lua ~/.config/nvim/init.lua
