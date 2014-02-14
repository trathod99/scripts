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
        alias proj="cd ~/PROJECTS/ && ls -a -l"
        alias ftree="tree -f -I 'vendor|tmp' "
        alias txd="tmux kill-session -t RAILS"
# RAILS ALIASES
        alias bi="bundle install --path vendor/bundle"
        alias rn="~/scripts/ruby/rails.sh"
# GIT ALIASES
        alias gta="git add . && git status"
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/chruby/chruby.sh 
chruby ruby-2.1.0
#PLUGINS
plugins=(zsh-syntax-highlighting)
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
