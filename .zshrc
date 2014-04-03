capp () {
        if [ -d ~/DRIVE/$1 ];
        then
                cd ~/DRIVE/$1
                CDPATH=~/DRIVE/$1
        else
                echo "App not found. Create $1 ? Enter no if you don't want to"
                read -p confirm
                if [[ $confirm = y ]]; then
                        mkdir ~/DRIVE/$1
                        cd ~/DRIVE/$1
                        CDPATH=~/DRIVE/$1
                else
                        echo "Ok. Exiting."
                fi
        fi
}

        function eapp () {
                CDPATH=
                cd ~
        }

        function aup () {
                if [ -d ~/DRIVE/$1 ];
                then
                        sudo ln -s ~/DRIVE/$1 /var/www/$1
                        cd /var/www/$1
                        CDPATH=/var/www/$1
                        sudo service apache2 start
                else
                        echo "App not found."
                fi
        }

        function eup () {
                if [ -d /var/www/$1 ];
                then
                        sudo rm -r /var/www/$1
                else
                        echo "No such directory in /var/www"
                fi
        }

        function ltree () {
                trees && while inotifywait -r -e create,modify,move,delete . ; do trees; done;
        }
# WHENEVER ALIAS
        alias wuc="whenever --update-crontab admin"

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/chruby/chruby.sh 
if [ -n "$TMUX" ]; 
then
        echo "in tmux"
else
        tx
fi
clear
chruby ruby-2.1.0
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
