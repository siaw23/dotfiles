
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

PS1="\u \w 😯 $ "


if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

alias rub='rubocop'

alias pg.start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg.stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias gc='git commit -S -m'
alias ga='git add .'
alias gb='git branch'
alias gs='git status'
alias gcm='git checkout master'
alias gco='git checkout'
alias gpo='git push origin'

alias del='rm -rf'

alias show='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

alias dc='time docker-compose run app'
alias dcports='time docker-compose run --service-ports app --rm'
alias dctest='time docker-compose run app rails test'
alias dcc='time docker-compose run app rails console'
alias dcrun='time docker-compose run app'
alias dcload='time docker-compose run app rails db:environment:set RAILS_ENV=development db:create db:structure:load db:fixtures:load'
alias dcbuild='time docker-compose up --build && dcload'
alias dcclean='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -q) && docker images -aq -f 'dangling=true' | xargs docker rmi && docker volume ls -q -f 'dangling=true' | xargs docker volume rm'
alias dcrspec='time docker-compose run app bundle exec rspec'
alias dcredis='docker exec -it tagpics_redis_1 redis-cli'
alias dcprune='docker stop $(docker ps -aq) && docker system prune -a'
alias dcremovecontainers='docker rm $(docker ps -aq)'
alias dcremoveimages='time docker rmi $(docker images -q)'
alias dclist='docker ps -aq'
alias dccreate='docker-compose run app rails db:create'
alias dcpristine='dcclean && dcbuild && dccreate'
alias dcdbcreate='docker-compose run app rails db:create'
alias dcdbpristine='time docker-compose run app rails db:drop db:create db:migrate db:structure:load db:fixtures:load'

alias dclearspace='rm -rf ~/Library/Containers/com.docker.docker/Data/com.docker.driver.amd64-linux/Docker.qcow2'

alias login='`aws ecr get-login --profile=cloudsight --no-include-email`'

# Redis
# More info: https://medium.com/@petehouston/install-and-config-redis-on-mac-os-x-via-homebrew-eb8df9a4f298
alias startred='redis-server /usr/local/etc/redis.conf'
alias stopred='launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.redis.plist'

solrstart='rake sunspot:solr:run'
redstart='redis-server'
java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
