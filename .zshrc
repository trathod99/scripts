# GET OHMYZSH!
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true # prevent prompt from renaming tmux windows
# ENABLE 256 COLOR SUPPORT, INCLUDING TMUX
export TERM="screen-256color"
# THEME
ZSH_THEME="tyler"
# MISC CONFIG
setopt AUTO_CD
# BASIC AUTOMATION ALIASES 
        alias tx="cd ~ && ~/scripts/tmux.sh"
        alias prj="cd ~/DRIVE/ && ls -a -l"
        alias ftree="tree -f -I 'vendor|tmp' "
        alias txd="tmux kill-session -t RAILS"
# RAILS ALIASES
        alias bi="bundle install --path vendor/bundle"
        alias rn="~/scripts/ruby/rails.sh"
# GIT ALIASES
        alias gta="git add . && git status"
# USE ALT S TO INSERT SUDO
        insert_sudo () { zle beginning-of-line; zle -U "sudo " }
        zle -N insert-sudo insert_sudo
        bindkey "^[s" insert-sudo
# WHENEVER ALIAS
        alias wuc="whenever --update-crontab admin"
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/chruby/chruby.sh 
chruby ruby-2.1.0
# ZSH HIGHLIGHT SETTINGS
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor root)
ZSH_HIGHLIGHT_STYLES[alias]='fg=179'
ZSH_HIGHLIGHT_STYLES[command]='fg=065'
ZSH_HIGHLIGHT_STYLES[path]='fg=073'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=035'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=035'
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=065'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=073'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=174'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=139'
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]='bg=255'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=244'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=244'
