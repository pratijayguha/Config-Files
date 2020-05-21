# #!/bin/bash/

CONFIG_DIR='$HOME/Config-Files'

# Symlinks for config files
ln -s $CONFIG_DIR/.LS_COLORS $HOME/
ln -s $CONFIG_DIR/.conkyrc $HOME/
ln -s $CONFIG_DIR/.zshrc $HOME/
ln -s $CONFIG_DIR/.tmux.conf $HOME/
ln -s $CONFIG_DIR/.gmshrc $HOME/

# OhMyZSH Themes
ln -s $CONFIG_DIR/agnoster-minimal.zsh-theme $ZSH/themes/
ln -s $CONFIG_DIR/agnoster-mod.zsh-theme $ZSH/themes/
ln -s $CONFIG_DIR/zsh-syntax-highlighting $ZSH/plugins/
ln -s $CONFIG_DIR/zsh-autosuggestions $ZSH/plugins

# To run sudo commands when not using root
SUDO=""
if [ "$(whoami)" = "root" ] ; then
	echo -e "You are the almighty root!"
else
	echo -e "You are just an ordinary user \n\n****ROOT AUTHORIZATION NEEDED****\n"
	SUDO="sudo"
fi

# Symlinks for Themes
$SUDO ln -s $CONFIG_DIR/Adapta-Orange-Nokto-Eta /usr/share/themes
$SUDO ln -s $CONFIG_DIR/Adapta-Dots /usr/share/themes



