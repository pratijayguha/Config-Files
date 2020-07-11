#!/bin/bash/

# Symlinks for config files
ln -s ~/Config-Files/.LS_COLORS $HOME/
ln -s ~/Config-Files/.conkyrc $HOME/.conkyrc
ln -s ~/Config-Files/.zshrc $ZDOTDIR/.zshrc
ln -s $HOME/Config-Files/awesome $XDG_CONFIG_HOME/
ln -s $HOME/Config-Files/.zshenv $HOME/
ln -s ~/Config-Files/.tmux.conf $HOME/
ln -s ~/Config-Files/.gmshrc $HOME/

# OhMyZSH Themes
ln -s ~/Config-Files/agnoster-minimal.zsh-theme $ZSH/themes/
ln -s ~/Config-Files/agnoster-mod.zsh-theme $ZSH/themes/
ln -s ~/Config-Files/zsh-syntax-highlighting $ZSH/plugins/
ln -s ~/Config-Files/zsh-autosuggestions $ZSH/plugins/

# Symlinks for Neovim
ln -s ~/Config-Files/nvim $HOME/.config/

# To run sudo commands when not using root
SUDO=""
if [ "$(whoami)" = "root" ] ; then
	echo -e "You are the almighty root!"
else
	echo -e "You are just an ordinary user \n\n****ROOT AUTHORIZATION NEEDED****\n"
	SUDO="sudo"
fi

# Symlinks for Themes
$SUDO ln -s ~/Config-Files/Adapta-Orange-Nokto /usr/share/themes
$SUDO ln -s ~/Config-Files/Adapta-Dots /usr/share/themes
$SUDO ln -s ~/Config-Files/Vimix-cursors /usr/share/icons


