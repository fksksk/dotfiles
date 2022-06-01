# git-promptの読み込み
# source ~/.zsh/git-prompt.sh

# git-completionの読み込み
# fpath=(~/.zsh $fpath)
# zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash

# プロンプトのオプション表示設定
# GIT_PS1_SHOWDIRTYSTATE=true
# GIT_PS1_SHOWUNTRACKEDFILES=true
# GIT_PS1_SHOWSTASHSTATE=true
# GIT_PS1_SHOWUPSTREAM=auto

# プロンプトの表示設定(好きなようにカスタマイズ可)
# setopt PROMPT_SUBST ; PS1='%F{green}%n@%m%f: %F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f\$ '

autoload -Uz compinit
# compinit
zstyle ':completion:*:default' menu select=1

if [ -e /usr/local/share/zsh-completions ]; then
  fpath=(/usr/local/share/zsh-completions $fpath)
fi

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補を詰めて表示
setopt list_packed

# 補完候補一覧をカラー表示
autoload colors
zstyle ':completion:*' list-colors ''

# コマンドのスペルを訂正
setopt correct
export PATH="/usr/local/opt/php@7.4/bin:$PATH"
export PATH="/usr/local/opt/py  thon@3.10/bin:$PATH"
export PATH="$HOME/.nodebrew/current/bin:$PATH"
export PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH=${HOME}/go/bin:${PATH}


# alias python=/usr/bin/python3
alias pip=/usr/bin/pip3
alias go=${HOME}/go/bin/go1.16
alias dc=docker-compose
alias dc-vuls="docker-compose down --rmi all --volumes --remove-orphans"

alias gs="git status"
alias gco="git checkout"
alias gd="git diff"
alias gc-m="git commit -m"
alias ga="git add -A"

# rbenv
[[ -d ~/.rbenv  ]] && \
  export PATH=${HOME}/.rbenv/bin:${PATH} && \
  eval "$(rbenv init -)"

# 環境変数
export AWS_DEFAULT_REGION=ap-northeast-1
export COMPOSER_MEMORY_LIMIT=-1