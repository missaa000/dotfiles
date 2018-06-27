#Ubuntu 16.04
###########################################

#環境変数
export LANG=ja_JP.UTF-8

#autoload -U compinit
autoload -U compinit
compinit

#autoload -Uz colors
autoload -Uz colors
colors
zstyle ':completion:*' list-colors ''

#emacs 風のキーバインド
bindkey -e

#プロンプト
PROMPT="${fg[yellow]}[%n]${fg[white]}%(!.#.$) "
RPROMPT="[%~]"
setopt transient_rprompt

#lsの色指定
export LS_COLORS='di=01;36:ex=31:*.cpp=34:*.c=32:ln=31:so=32:pi=33:bd=34:cd=35:su=36:sg=37:tw=42:ow=45'
alias ls="ls --color"

#trl+Dでzshを終了しない
setopt ignore_eof

# rm * の前に確認をとる
setopt rm_star_wait

#エラーに色をつける
exec 2> >(sed --unbuffered "s/^/${fg_bold[magenta]}/;s/$/${reset_color}/")
