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

#emacsのエイリアス
alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs"

#vimのエイリアス
alias vim="vim -c start"

#プロンプト
#PROMPT="${fg[cyan]}[%n]${fg[black]}%(!.#.$) "
PROMPT="${fg[cyan]}[missaa]${fg[black]}%(!.#.$) "
RPROMPT="[%~]"
setopt transient_rprompt

#lsの色指定
export LSCOLORS=Dxfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -G"
#alias gls="ls --color"

zstyle ':completion:*' list-colors 'di=01;33' 'ln=35' 'so=32' 'ex=31;41' 'bd=46;34' 'cd=43;34'

#trl+Dでzshを終了しない
setopt ignore_eof

# rm * の前に確認をとる
setopt rm_star_wait

#エラーに色をつける
#exec 2> >(sed --unbuffered "s/^/${fg_bold[red]}/;s/$/${reset_color}/")

#add anaconda PATH
export PATH="$PATH:/anaconda3/bin"

#history
#http://shanon-tech.blogspot.com/2017/12/vimrczshrcvimiumshanonadventcalendar201.html
HISTFILE=$HOME/.zsh_history # 履歴ファイルの定義
SAVEHIST=1000000            # 履歴ファイルのサイズ
HISTSIZE=1000000            # メモリに載せる履歴のサイズ
#PATH=${PATH}:~/bin

HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] " # ヒストリの一覧を読みやすい形に変更

setopt APPEND_HISTORY         # ヒストリファイルを上書きするのではなく、追加するようにする
setopt EXTENDED_HISTORY       # ヒストリに時刻情報もつける
setopt HIST_EXPIRE_DUPS_FIRST # 履歴がいっぱいの時は最も古いものを先ず削除
setopt HIST_FIND_NO_DUPS      # 履歴検索中、(連続してなくとも)重複を飛ばす
setopt HIST_IGNORE_ALL_DUPS   # 履歴中の重複行をファイル記録前に無くす
setopt HIST_IGNORE_DUPS       # 前と重複する行は記録しない
setopt HIST_IGNORE_SPACE      # 行頭がスペースのコマンドは記録しない
#setopt HIST_NO_FUNCTIONS      # ヒストリリストから関数定義を除く
setopt HIST_NO_STORE          # histroyコマンドは記録しない
setopt HIST_REDUCE_BLANKS     # 余分な空白は詰めて記録
setopt HIST_SAVE_NO_DUPS      # 古いコマンドと同じものは無視
#setopt INC_APPEND_HISTORY     # 履歴をインクリメンタルに追加
#setopt SHARE_HISTORY          # 履歴を共有
