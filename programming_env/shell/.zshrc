source ~/.bash_profile

PROMPT='[%T][%~]%# '
PATH="$PYENV_ROOT/bin:$PATH"
NPM_CONFIG_PREFIX=~/.npm-global

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export LANG=ja_JP.UTF-8 

alias brew="PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin brew"
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PIPENV_VENV_IN_PROJECT=1
export PATH="$HOME/.poetry/bin:$PATH"

export PATH="$HOME/.npm-global/bin:$PATH"

