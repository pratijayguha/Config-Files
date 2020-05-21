# #!/bin/bash/

# Symlinks for Config Files
rm -rf ~/.LS_COLORS
rm -rf ~/.conkyrc
rm -rf ~/.zshrc
rm -rf ~/.tmux.conf
rm -rf ~/.gmshrc


# Symlinks for ZSH Themes and Plugins
rm -rf ~/.oh-my-zsh/plugins/zsh-autosuggestions
rm -rf ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
rm -rf ~/.oh-my-zsh/themes/agnoster-minimal.zsh-theme
rm -rf ~/.oh-my-zsh/themes/agnoster-mod.zsh-theme

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
