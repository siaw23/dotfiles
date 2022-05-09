# export EDITOR="/usr/local/bin/mate -w"

export PATH="$PATH:`pwd`/flutter/flutter/bin"

alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias delete_branches="git branch | grep -v "master" | xargs git branch -D"

alias pc="sudo lsof -i"
alias bt="htmlbeautifier"
alias rb="rubocop"
alias uchrome="open /Applications/Google\ Chrome.app --args --user-data-dir="/var/tmp/Chrome dev session" --disable-web-security --allow-file-access-from-files"

## Redis
alias redstart="brew services start redis"
alias redstop="brew services stop redis"
alias redping="redis-cli ping"


alias gco="git checkout"
alias gs="git status"
alias gd="git diff "
alias ga="git add"
alias gc="git commit"
alias gb="git branch"
alias gac="git commit -a -m"
alias gphm="git push heroku main"


alias dc="docker-compose"

alias del="rm -rf"

alias ri="rake install"
alias bc="bin/console"


alias mux="tmux"
alias tl="tmux list-session"
alias ta="tmux attach -t"


alias restart="sudo shutdown -r"

alias cra="npx create-react-app"
alias ant="antora generate antora-playbook.yml"

phx() {
  if [[ $@ == "c" || $@ == "console" ]]; then
    command iex -S mix
  elif [[ $@ == "s" || $@ == "server" ]]; then
    command mix phx.server
  elif [[ $@ == "r" || $@ == "routes" ]]; then
    command mix phx.routes
  fi
}

gain() {
  osascript -e "set volume input volume $1" && echo "🎙  gain set to $1%."
}

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/siaw23/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# RVM
export PATH="$PATH:$HOME/.rvm/bin"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
#export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"