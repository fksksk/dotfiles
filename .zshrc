autoload -Uz compinit
# compinit
zstyle ':completion:*:default' menu select=1

compinit -u
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


# alias python=/usr/bin/python3
alias pip=/usr/bin/pip3
alias dc=docker-compose
alias dc-vuls=‘docker compose down --rmi all --volumes’