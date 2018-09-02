# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/olle/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="wedisagree"
DEFAULT_USER='olle'
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dirhistory emoji-clock extract fancy-ctrl-z zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh

# User configuration

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

export PATH=$HOME/Scripts:$PATH
export PATH=$HOME/bin:$PATH

# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias tmux='tmux -2'

############################
### Powerlevel 9k setup ####
############################
# POWERLEVEL9K_BATTERY_CHARGING='yellow'
# POWERLEVEL9K_BATTERY_CHARGED='green'
# POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
# POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
# POWERLEVEL9K_BATTERY_LOW_COLOR='red'
# POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
# POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
# POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'
# POWERLEVEL9K_VCS_GIT_ICON='\ue60a'
#POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
#POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
##POWERLEVEL9K_VCS_UNTRACKED_ICON='?'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon battery context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(todo time)
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=4
##POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
#POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"
#POWERLEVEL9K_STATUS_VERBOSE=false
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
############################

# git aliases
alias commit='git commit'
alias add='git add --all'
alias log='git log'
alias push='git push'
alias pull='git pull'
alias stash='git stash'
alias clone='git clone'
alias fetch='git fetch'
alias merge='git merge -s recursive -X patience'
alias branch='git branch'
alias rebase='git rebase'
alias amend='git commit -C HEAD --amend'
alias change_url='git remote set-url'

# edit confs
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias tmuxrc="vim ~/.tmux.conf"

# apt aliases
alias update="sudo apt update"
alias upgrade="sudo apt-get dist-upgrade"
alias install="sudo apt install"
alias search="apt search"
alias remove="apt-get purge"

# make symbols ´`^~¨ needing only one buttonpress, removing possibility of using them for accent
xmodmap -e 'keycode 35 = dollar asciicircum NoSymbol NoSymbol asciitilde asciitilde'
xmodmap -e 'keycode 21 = acute grave'

# locate always regex
alias locate='locate -r'

alias rdesktop='rdesktop -g 1680x980 -k sv -u olle.wiklund -d ATM.BINERO.NET -p - -r disk:share=/home/olle/rdesktop'

alias sshApache="ssh -F /home/olle/.ssh/apache_config -o StrictHostKeyChecking=no"
alias atm='kinit olle.wiklund@ATM.BINERO.NET'
alias hostex='kinit olle.wiklund@HOSTEX.SE'
alias xclip='xclip -selection clipboard'
alias testing='git checkout testing/queens'
alias master='git checkout master'
alias prod='git checkout production/queens'
alias session='tmux switch -t'
alias ps='grc ps'
alias ip='grc ip'
alias df='grc df'
alias fdisk='grc fdisk'
# alias ls='grc ls'
alias du='grc du'
alias make='grc make'
alias cat='grc cat'
alias tail='grc tail'
alias sudo='sudo '
alias todo='todo.sh'
alias finished='todo archive'

export WORKON_HOME=$HOME/.virtualenvs   # optional
export PROJECT_HOME=$HOME/GitHub/      # optional
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/home/olle/.pyenv/bin:$PATH"
export PATH="/home/olle/.local/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme
source /home/olle/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
