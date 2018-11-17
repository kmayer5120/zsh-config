#  _  __     _      _               _        ____             __ _       
# | |/ /   _| | ___( )___   _______| |__    / ___|___  _ __  / _(_) __ _ 
# | ' / | | | |/ _ \// __| |_  / __| '_ \  | |   / _ \| '_ \| |_| |/ _` |
# | . \ |_| | |  __/ \__ \  / /\__ \ | | | | |__| (_) | | | |  _| | (_| |
# |_|\_\__, |_|\___| |___/ /___|___/_| |_|  \____\___/|_| |_|_| |_|\__, |
#      |___/                                                       |___/ 


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

TERM='rxvt-unicode'
COLORTERM='rxvt-unicode-256color'

# Path to your oh-my-zsh installation.
ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="clean"
ZSH_THEME="cleanLambda"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# powerline zsh integration
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

# Uncomment the following line to us hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
  git
  python
  vundle
  vi-mode
  archlinux
)


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

export JAVA_HOME="/usr/lib/jvm/java-8-jdk/"
export DERBY_HOME="/usr/lib/jvm/java-8-jdk/db"


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"




ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

source $ZSH/oh-my-zsh.sh

export VISUAL=vim
export EDITOR="$VISUAL"
set -o vi

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)


# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias p="pwd" 
alias l="ls -al"

# java compile aliases
alias jcall="javac *.java && echo \"Compiled: \" && echo *.java"


#programs
alias m="cmus"
alias c="cava"
alias r="ranger"
alias t="tmux"
alias h="htop"
alias picDL="python3 Documents/code/applications/PictureDownloader/PicDL.py"
alias wall="python3 /home/kyle/Documents/code/python/wallpaperSwitcher/main.py"
alias shrug="python3 /home/kyle/Documents/code/python/shrug.py"   

#new terminal from current working directory
alias nt="urxvt& -e urxvt | echo ${PWD} && ls"

#trim shortcuts
alias htrim="time sudo fstrim -v /home/kyle"
alias rtrim="time sudo fstrim -v /"

#shortcut to configs
alias cfr="vim /home/kyle/.config/ranger/rc.conf"
alias cfb="vim /home/kyle/.bashrc"
alias cfz="vim /home/kyle/.zshrc"
alias cfv="vim /home/kyle/.vimrc"
alias cfi="vim /home/kyle/.config/i3/config"
alias cfp="vim /home/kyle/.config/polybar/config"

alias startMCS="cd ~/Documents/minecraftServer && java -jar minecraft_server.1.12.jar"
alias cdp="cd /home/kyle/Documents/code/python"
alias ls='ls --color=auto $LS_OPTIONS'
alias etcher="cd ~/.etcher && ./etcher-1.1.2-x86_64.AppImage"
alias neofetch="neofetch --block_width 7 --block_height 3 --bar_border on --ascii_bold on --os_arch off --disable theme icons --distro_shorthand tiny --disk_show /home/kyle --cpu_temp "

alias cdcnm="cd /home/kyle/Documents/cnm/"
alias cdphy="cd /home/kyle/Documents/cnm/physics"

#cs navigation aliases
alias cs1="cd /home/kyle/Documents/cnm/cs/cs1"
alias csl1="cd /home/kyle/Documents/cnm/cs/cs2/labs/Lab01 && ls"
alias csl2="cd /home/kyle/Documents/cnm/cs/cs2/labs/Lab02 && ls"
alias csl3="cd /home/kyle/Documents/cnm/cs/cs2/labs/Lab03 && ls"
alias cm="cd /home/kyle/Documents/cnm/cs/cs2/classMaterials"
alias cs2="cd /home/kyle/Documents/cnm/cs/cs2"
alias cs3="cd /home/kyle/Documents/cnm/cs/cs3"
alias final="/home/kyle/Documents/cnm/cs/cs2/rentalPropertyFinalProject"


alias cdc="cd /home/kyle/Documents/code"
alias cdmath="cd /home/kyle/Documents/cnm/math"
alias cdconf="cd /home/kyle/.config"
alias cdj="cd /home/kyle/Documents/code/java"
alias pics="cd /home/kyle/Documents/code/java/PictureDownloader/"
alias pi="ssh pi@10.0.0.17"
alias hdd="cd /home/kyle/hdd"
alias x220="ssh kyle@10.0.0.29"
alias ftpx220="sftp 10.0.0.29"

alias batt="sudo tlp start"
alias b="acpi -b"

