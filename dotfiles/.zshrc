# GET OHMYZSH!
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true # prevent prompt from renaming tmux windows
# ENABLE 256 COLOR SUPPORT, INCLUDING TMUX
export TERM="screen-256color"
# THEME
ZSH_THEME="tyler"
# MISC CONFIG
setopt AUTO_CD
export BUNDLER_EDITOR=vim
NPM_PACKAGES='/home/ubuntu/.npm-packages'
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
# BASIC AUTOMATION ALIASES 
        alias szc="source ~/.zshrc"
        alias tx="cd ~ && ~/scripts/utils/tmux.sh"
        alias txd="tmux kill-session -t RAILS"
        alias v="vim"
        alias trees="tree -a --noreport -C --dirsfirst -I 'vendor|test|.tmp|tmp|components|node_modules|bower_components|\.git'"
# RAILS ALIASES
        alias Rbi="bundle install --path vendor/bundle"
        alias Rrn="~/scripts/utils/rails.sh"
# GIT ALIASES
        alias gta="git add . && git status"
# FUNCTIONS

        function psh () {
                curl -s -F token="au62YZTioXTEYXXhNeNtkAbZGMTa4K" -F "user=uHciazddywQjbH4JKbrsTeK9mgcZvx" -F "message=:$1" https://api.pushover.net/1/messages.json
        }

        function capp () {
                if [ -d ~/DRIVE/$1 ] 
                then
                        cd ~/DRIVE/$1
                        CDPATH=~/DRIVE/$1
                else
                        echo "App not found."
                fi
        }

        function eapp () {
                CDPATH=
                cd ~
        }

        function aup () {
                if [ -d ~/DRIVE/$1 ]
                then
                        sudo ln -s ~/DRIVE/$1 /var/www/html/$1
                        cd /var/www/html/$1
                        CDPATH=/var/www/html/$1
                        sudo service apache2 start
                else
                        echo "App not found."
                fi
        }

        function eup () {
                if [ -d /var/www/$1 ]
                then
                        sudo rm -r /var/www/$1
                else
                        echo "No such directory in /var/www"
                fi
        }

        function ltree () {
                trees && while inotifywait -r -e create,modify,move,delete . ; do trees; done;
        }

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/chruby/chruby.sh 
chruby 2.1.2 
# ZSH HIGHLIGHT SETTINGS
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
ZSH_HIGHLIGHT_STYLES[alias]='fg=179'
ZSH_HIGHLIGHT_STYLES[command]='fg=064'
ZSH_HIGHLIGHT_STYLES[path]='fg=033'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=035'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=035'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=064'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=033'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=174'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=139'
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='bg=255'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=244'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=244'
