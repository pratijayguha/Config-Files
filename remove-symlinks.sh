#!/bin/bash/

# Symlinks for Config Files
rm -rf $HOME/.LS_COLORS
rm -rf $HOME/.conkyrc
# rm -rf $HOME/.zshrc
rm -rf $HOME/.tmux.conf
rm -rf $HOME/.gmshrc


# Symlinks for ZSH Themes and Plugins
rm -rf $HOME/.oh-my-zsh/plugins/zsh-autosuggestions
rm -rf $HOME/.oh-my-zsh/plugins/zsh-syntax-highlighting
rm -rf $HOME/.oh-my-zsh/themes/agnoster-minimal.zsh-theme
rm -rf $HOME/.oh-my-zsh/themes/agnoster-mod.zsh-theme

# To run sudo commands when not using root
SUDO=""
if [ "$(whoami)" = "root" ] ; then
	echo -e "You are the almighty root!"
else
	echo -e "You are just an ordinary user \n\n****ROOT AUTHORIZATION NEEDED****\n"
	SUDO="sudo"
fi

# Symlinks for Themes
$SUDO rm -rf /usr/share/themes/Adapta-Orange-Nokto-Eta
$SUDO rm -rf /usr/share/themes/Adapta-Dots
$SUDO rm -rf //usr/share/icons/Vimix-cursors
