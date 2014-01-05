# GET OHMYZSH!
ZSH=$HOME/.oh-my-zsh
DISABLE_AUTO_TITLE=true # prevent prompt from renaming tmux windows
# ENABLE 256 COLOR SUPPORT, INCLUDING TMUX
export TERM="screen-256color"
# CHANGE PATH TO INCLUDE RBENV EXECUTABLE
export PATH='/home/ubuntu/.rbenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/ubuntu/.rbenv/shims'
export RBENV_SHELL=zsh
source '/home/ubuntu/.rbenv/libexec/../completions/rbenv.zsh'
rbenv rehash 2>/dev/null
rbenv() {
  local command
  command="$1"
  if [ "$#" -gt 0 ]; then
    shift
  fi

  case "$command" in
  rehash|shell)
    eval "`rbenv "sh-$command" "$@"`";;
  *)
    command rbenv "$command" "$@";;
  esac
}
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# THEME
ZSH_THEME="tyler"

# PLUGINS

plugins=(bundler)

# ALIASES
alias tx="cd ~ && ~/scripts/tmux.sh"
alias proj="cd ~/PROJECTS/blog && ls -a -l"
alias ftree="tree -f -I 'vendor|tmp' "

source $ZSH/oh-my-zsh.sh
