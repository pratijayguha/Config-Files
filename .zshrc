# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster-mod"


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  zsh-syntax-highlighting
  zsh-autosuggestions
  command-not-found
)

# Sourcing OhMyZSH
. $ZSH/oh-my-zsh.sh

# Source FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

#Source commands from OpenFoam7
. /opt/openfoam7/etc/bashrc

# Source conda and set the config as base false
. $HOME/.anaconda/bin/activate
conda deactivate

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# A better set of LS_COLORS that I was talking about. LS_COLORS value stored in ~/.LS_COLORS
# Obtained from https://github.com/trapd00r/LS_COLORS
eval $( dircolors -b ~/.LS_COLORS )

# Applies the above set of LS_COLORS to zsh autocomplete
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"
autoload -Uz compinit
compinit

# Cheap thrills
echo "\n$(fortune -s)\n\n"

# echo "$(/usr/lib/update-notifier/apt-check --human-readable)"  


# XD
alias clear='clear;echo "\n¯\_(ツ)_/¯"'

function clear-scrn() {
  clear
  zle accept-line
}

# Define a widget called "clear-scrn", mapped to our function above.
zle -N clear-scrn

# Bind it to Ctrl-K.
bindkey "^k" clear-scrn

LANG="en_US.UTF-8"
LC_COLLATE="en_US.UTF-8"
LC_CTYPE="en_US.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_MONETARY="en_US.UTF-8"
LC_NUMERIC="en_US.UTF-8"
LC_TIME="en_US.UTF-8"
LC_ALL="en_US.UTF-8"

# Copy and Paste. REQUIRES PACKAGE "xclip".
# To install using apt, "sudo apt install xclip"
# To use, pipe content to "copy". Example: "echo "Hello World!" | copy".
# "Hello World" is copied to the clipboard.
alias copy="xclip -selection c"
alias paste="xclip -selection c -o"

alias dir_thesis_res="cd /mnt/IMP/Work/Thesis/ValidationCase/Results/"
alias dir_tf="cd /mnt/IMP/Work/Thesis/DeepLearning-RarefiedFlows/"

# Alias to start an instance of JupyterLab for Google Colab Notebook
alias jupyter_collab="jupyter notebook --NotebookApp.allow_origin='https://colab.research.google.com'   --port=9090 --no-browser --NotebookApp.port_retries=0 --NotebookApp.disable_check_xsrf=True --NotebookApp.token=''"

# Alias for git
alias ga="git add ."
alias gs="git status"
alias gcm="git commit -m"
alias gp="git push"

# Alias to change wallpaper
alias W="nitrogen --set-zoom-fill --random /mnt/Stuff/Personal/Wallpaper/" 

# Alias for Python3
alias py="python3"

# Alias for hibernation
alias hibernate="sudo xscreensaver-command -lock && sudo pm-hibernate" 

TERM=xterm-256color
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
