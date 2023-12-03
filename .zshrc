# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/gaurav/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_COLORIZE_STYLE="colorful"
ZSH_COLORIZE_CHROMA_FORMATTER=terminal256

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting zsh-autosuggestions sudo command-not-found extract web-search z ohmyzsh-full-autoupdate bgnotify aliases man docker docker-compose dotenv encode64 extract gcloud gitfast git-extras git-prompt colored-man-pages catimg git-flow thefuck universalarchive urltools vscode wd common-aliases colorize zsh-interactive-cd web-search copypath copyfile copybuffer dirhistory last-working-dir history history-substring-search jsontools node npm nvm postgres safe-paste kubectl kubectx shrink-path singlechar sublime systemadmin terraform themes transfer mvn gradle helm isodate jira httpie alias-finder)

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias myip="curl https://ipinfo.io/json" # or /ip for plain-text ip

# Quickly serve the current directory as HTTP
alias serve='ruby -run -e httpd . -p 8000' # Or python -m SimpleHTTPServer :)

alias dl="cd ~/Downloads"
alias mcis='mvn clean install -DskipTests=true'
alias mci='mvn clean install'
alias mcc='mvn clean compile'
alias mc='mvn clean'
alias clm2='rm -rf ~/.m2/repository/'
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias n="nano"
alias m="mkdir"
alias scz="source ~/.zshrc"
alias subl="open -a 'sublime text'"

# docker aliases
alias d="docker"
alias dps="docker ps"

# macOS aliasses
if [[ $OSTYPE == darwin* ]]; then
alias flush='dscacheutil -flushcache'

# Apps
alias browse="open -a /Applications/Arc.app"
fi

alias distro='cat /etc/*-release'

alias cl="clear"
alias ex="exit"
alias e="code -n ~/ ~/.zshrc ~/.aliases ~/.colors ~/.hooks"

alias lsd="ls -lhF ${colorflag} | grep --color=never '^d'"
alias week='date +%V'
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

alias h="history -10" # last 10 history commands
alias hc="history -c" # clear history
alias hg="history | grep " # +command
alias ag="alias | grep " # +command
alias t="htop"
alias d="ncdu --exclude /mnt --color dark" # +path

# https://www.speedtest.net/apps/cli
alias st="speedtest"

# https://github.com/sindresorhus/clipboard-cli
alias cb="clipboard"

alias gcg="git config --edit --global"
alias gcl="git config --edit --local"
alias gcae="git commit --allow-empty -m " # <message>

export PATH="$HOME/.helpers/b64/:$PATH"
alias b2f="b64_to_file"
alias f2b="file_to_b64"

pbcopy() {
  stdin=$(</dev/stdin);
  pbcopy="$(which pbcopy)";
  if [[ -n "$pbcopy" ]]; then
    echo "$stdin" | "$pbcopy"
  else
    echo "$stdin" | xclip -selection clipboard
  fi
}
pbpaste() {
  pbpaste="$(which pbpaste)";
  if [[ -n "$pbpaste" ]]; then
    "$pbpaste"
  else
    xclip -selection clipboard
  fi
}


if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group"
fi


. /home/gaurav/z.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
