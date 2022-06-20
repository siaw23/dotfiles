PROMPT='%F{green}%1~%f %# '
source $HOME/.aliases

## Adjust microphone gain from terminal
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
ZSH_THEME="agnoster"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# RVM
export PATH="$PATH:$HOME/.rvm/bin"

# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/usr/local/opt/elasticsearch@5.6/bin:$PATH"
#export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
