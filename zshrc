# Path to your oh-my-zsh installation.
export ZSH=/Users/reed/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/reed/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Enable tab completion
export PYTHONSTARTUP=~/.pythonrc

source $ZSH/oh-my-zsh.sh
source "$(brew --prefix dvm)/dvm.sh"

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias frbase="cd ~/Code/fr/fr-projects"
alias reactfe="cd Code/fr/fr-projects/flowrouteweb/src/flowroute/react-frontend"
alias pycharm="open -a /Applications/PyCharm.app"
# eval $(docker-machine env default)

alias drm="docker ps -q -a -f 'status=exited'  | xargs docker rm -v"
alias drmi="docker images -q -f 'dangling=true' | xargs docker rmi"
alias drmv="docker volume ls -q -f 'dangling=true' | xargs docker volume rm"

alias datadog="open https://app.datadoghq.com/account/login/id/b8a14b9ec"
alias ktmux="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"
alias vls="ls -1"
alias gitclean="git clean -dfx"
alias gitnuke="git reset --hard"
alias githunk="git add -p"
alias flask_template="docker run -it -v $(pwd):/output flowroute/app-template"
alias nsq_template="docker run -it -v $(pwd):/output flowroute/app-template nsq-consumer"
alias dc="docker-compose"
alias frweb="cd ~/Code/fr/fr-projects/flowrouteweb/src/flowroute/"

function grepa { grep -R "$1" *; }
function tmuxd { tmux resize-pane -D $1; }
function tmuxu { tmux resize-pane -U $1; }
function tmuxl { tmux resize-pane -L $1; }
function tmuxr { tmux resize-pane -R $1; }

