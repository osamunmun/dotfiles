# Created by newuser for 4.3.10

#Set Rbenv paths
export PATH="$HOME/.rbenv/bin:$(brew --prefix coreutils)/libexec/gnubin):$PATH"

export DYLD_LIBRARY_PATH=/usr/local/opt/cairo/lib
export PATH="$HOME/.rbenv/shims:$HOME/bin:$(brew --prefix coreutils)/libexec/gnubin:$PATH"
eval "$(rbenv init -)"

#Set Alias Commands
alias be='bundle exec'
alias ber='bundle exec rake'
alias bi='bundle install'
alias gp='git push'
alias gad='git add -p'
alias gci='git commit'
alias gis='git status'
alias gdif='git diff'
alias gremov='git remote -v'
alias gb='git branch -a'
alias gbranr='git branch -r'
alias gch='git checkout'
alias bespec='bundle exec foreman run rspec'
alias tmuxd='tmux detach'
alias tmuxa='tmux attach'
alias tmux='TERM=screen-256color-bce tmux'
alias r='rails'
alias c='console'
alias ls='ls --color'
alias dps='docker ps'
alias ds='docker stop'
alias dr='docker run'
alias db='docker build'

# setting for nvm
[[ -s /Users/osamutakayasu/.nvm/nvm.sh ]] && . /Users/osamutakayasu/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir

#=============================
# source zsh-syntax-highlighting
# git submodule add https://github.com/zsh-users/zsh-syntax-highlighting.git
#=============================
if [ -f ~/Dropbox/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/Dropbox/dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

## Directory to save history
HISTFILE=~/.zsh-history
## the number of histories load into memory
HISTSIZE=100000
## the number of histories saved
SAVEHIST=100000
bindkey -v
bindkey -e
bindkey '^r' history-incremental-search-backward
bindkey '^p' history-beginning-search-backward
bindkey '^n' history-beginning-search-forward
bindkey -s '^z' '^[q %vi^m']
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/takayasu/.zshrc'

if [ -n "$LS_COLORS" ]; then
  zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
fi

if [ -f ~/.dircolors ]; then
  if type dircolors > /dev/null 2>&1; then
    eval $(dircolors ~/.dircolors)
  elif type gdircolors > /dev/null 2>&1; then
    eval $(gdircolors ~/.dircolors)
  fi
fi

## Emphasize input support
autoload -Uz compinit
compinit
## Limit the size of coredump
limit coredumpsize 102400
## 出力の文字列末尾に改行コードが無い場合でも表示
unsetopt promptcr
## Use colors
setopt prompt_subst
## Don't beep
setopt nobeep
## 内部コマンド jobs の出力をデフォルトで jobs -l にする
setopt long_list_jobs
## 補完候補一覧でファイルの種別をマーク表示
setopt list_types
## サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume
## 補完候補を一覧表示
setopt auto_list
## 直前と同じコマンドをヒストリに追加しない
setopt hist_ignore_dups
## cd 時に自動で push
DIRSTACKSIZE=100
setopt auto_pushd
## 同じディレクトリを pushd しない
setopt pushd_ignore_dups
## ファイル名で #, ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
## TAB で順に補完候補を切り替える
setopt auto_menu
## zsh の開始, 終了時刻をヒストリファイルに書き込む
setopt extended_history
## =command を command のパス名に展開する
setopt equals
## --prefix=/usr などの = 以降も補完
setopt magic_equal_subst
## ヒストリを呼び出してから実行する間に一旦編集
setopt hist_verify
## ファイル名の展開で辞書順ではなく数値的にソート
setopt numeric_glob_sort
## 出力時8ビットを通す
setopt print_eight_bit
## ヒストリを共有
setopt share_history
## 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
## 補完候補の色づけ
eval `dircolors`
export ZLS_COLORS=$LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
## ディレクトリ名だけで cd
setopt auto_cd
## カッコの対応などを自動的に補完
setopt auto_param_keys
## ディレクトリ名の補完で末尾の / を自動的に付加し、次の補完に備える
setopt auto_param_slash
## スペルチェック
setopt correct
## {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
## Ctrl+S/Ctrl+Q によるフロー制御を使わないようにする
setopt NO_flow_control
## コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
## コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
## ファイル名の展開でディレクトリにマッチした場合末尾に / を付加する
setopt mark_dirs
## history (fc -l) コマンドをヒストリリストから取り除く。
setopt hist_no_store
## 補完候補を詰めて表示
setopt list_packed
## 最後のスラッシュを自動的に削除しない
setopt noautoremoveslash

# End of lines added by compinstall)

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
