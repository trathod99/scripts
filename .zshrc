# GET OHMYZSH!
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true # prevent prompt from renaming tmux windows
# ENABLE 256 COLOR SUPPORT, INCLUDING TMUX
export TERM="screen-256color"
# THEME
ZSH_THEME="tyler"
# MISC CONFIG
setopt AUTO_CD
# ALIASES
alias tx="cd ~ && ~/scripts/tmux.sh"
alias proj="cd ~/PROJECTS/ && ls -a -l"
alias ftree="tree -f -I 'vendor|tmp' "
alias txd="tmux kill-session -t RAILS"
alias bi="bundle install --path vendor/bundle"
alias gta="git add . && git status"
source $ZSH/oh-my-zsh.sh
source /usr/local/share/chruby/chruby.sh
chruby ruby-2.1.0
