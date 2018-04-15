# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/olle/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
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
ENABLE_CORRECTION="true"

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

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
export EDITOR='vim'
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

export PATH=$HOME/Scripts:$PATH

# export PATH=$HOME/bin:/usr/local/bin:$PATH
alias tmux='tmux -2'


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
alias update="sudo apt-get update"
alias upgrade="sudo apt-get dist-upgrade"
alias install="sudo apt-get install"
alias search="apt search"
alias remove="apt-get purge"

# make symbols ´`^~¨ needing only one buttonpress, removing possibility of using them for accent
xmodmap -e 'keycode 35 = dollar asciicircum NoSymbol NoSymbol asciitilde asciitilde'
xmodmap -e 'keycode 21 = acute grave'

# locate always regex
alias locate='locate -r'

alias rdesktop='rdesktop -g 1680x980 -k sv -u olle.wiklund -d ATM.BINERO.NET -p - -r disk:share=/home/olle/rdesktop'

# add personal path for autocompletion
# fpath=(~/.zsh_completions $fpath)

# =() {
    # echo "$(($@))"
# }

alias sshApache="ssh -F /home/olle/.ssh/apache_config -o StrictHostKeyChecking=no"
SSH() {
    xpanes -c "ssh {}" $(grep "$1" /etc/hosts | awk '{print $2}')
}


export WORKON_HOME=$HOME/.virtualenvs   # optional
export PROJECT_HOME=$HOME/GitHub/      # optional
source /usr/local/bin/virtualenvwrapper.sh
export PATH="/home/olle/.pyenv/bin:$PATH"
export PATH="/home/olle/.local/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
