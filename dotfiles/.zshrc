export LANG=ja_JP.UTF-8

##################################################
# aliases

alias ls="ls -Gv"
alias ll="ls -l"
alias la="ll -a"

alias app="open -a"

alias g="git"

alias e="emacs"
alias v="vim"

##################################################

export EDITOR='vim'

# PostgreSQL Settings
echo 'export ARCHFLAGS="-arch x86_64"' >> ~/.zprofile
echo 'export PGDATA="/usr/local/var/postgres"' >> ~/.zprofile

# ghq + peco
# http://weblog.bulknews.net/post/89635306479/ghq-peco-percol
function peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

# ls + git status
# http://qiita.com/yuyuchu3333/items/e9af05670c95e2cc5b4d
function do_enter() {
    if [ -n "$BUFFER" ]; then
        zle accept-line
        return 0
    fi
    echo
    ls
    # ↓おすすめ
    # ls_abbrev
    if [ "$(git rev-parse --is-inside-work-tree 2> /dev/null)" = 'true' ]; then
        echo
        echo -e "\e[0;33m--- git status ---\e[0m"
        git status -sb
    fi
    zle reset-prompt
    return 0
}
zle -N do_enter
bindkey '^m' do_enter

# z
. `brew --prefix`/etc/profile.d/z.sh
function precmd () {
  z --add "$(pwd -P)"
}

# save history file
HISTFILE=~/.zsh_history

# 補完
fpath=($(brew --prefix)/share/zsh/site-functions $fpath)

autoload -U compinit
compinit -u

# 色設定
autoload -U colors; colors

# もしかして機能
setopt correct

# プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats \
    '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
    zstyle ':vcs_info:*' formats       \
        '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
        zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'

        zstyle ':vcs_info:*' enable git cvs svn

# or use pre_cmd, see man zshcontrib
vcs_info_wrapper() {
    vcs_info
      if [ -n "$vcs_info_msg_0_" ]; then
            echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
              fi
}

# プロンプト指定
PROMPT='
[%n] %{${fg[yellow]}%}%~%{${reset_color}%} %1(v|%F{green}%1v%f|) $(vcs_info_wrapper)
%(?.%{$fg[green]%}.%{$fg[blue]%})%(?!(*'\''-'\'') <!(*;-;%)? <)%{${reset_color}%} '

# プロンプト指定(コマンドの続き)
PROMPT2='[%n]> '

# もしかして時のプロンプト指定
SPROMPT="%{$fg[red]%}%{$suggest%}(*'~'%)? < もしかして %B%r%b %{$fg[red]%}かな? [そう!(y), 違う!(n),a,e]:${reset_color} "

# http://blog.livedoor.jp/sonots/archives/38589335.html
net_tools_deprecated_message () {
    echo -n 'net-tools コマンドはもう非推奨ですよ？おじさんなんじゃないですか？ '
}

arp () {
    net_tools_deprecated_message
      echo 'Use `ip n`'
}
ifconfig () {
    net_tools_deprecated_message
      echo 'Use `ip a`, `ip link`, `ip -s link`'
}
iptunnel () {
    net_tools_deprecated_message
      echo 'Use `ip tunnel`'
}
iwconfig () {
    echo -n 'iwconfig コマンドはもう非推奨ですよ？おじさんなんじゃないですか？ '
      echo 'Use `iw`'
}
nameif () {
    net_tools_deprecated_message
      echo 'Use `ip link`, `ifrename`'
}
netstat () {
    net_tools_deprecated_message
      echo 'Use `ss`, `ip route` (for netstat -r), `ip -s link` (for netstat -i), `ip maddr` (for netstat -g)'
}
route () {
    net_tools_deprecated_message
      echo 'Use `ip r`'
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
