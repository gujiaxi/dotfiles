##############################
#  plugins managed by zplug  #
##############################

export ZPLUG_HOME=$HOME/.zplug
if ! [[ -d $ZPLUG_HOME ]]; then
    print "Installing zplug ..."
    command -v git >/dev/null 2>&1 && \
        env git clone https://github.com/zplug/zplug $ZPLUG_HOME >/dev/null 2>&1
fi
source $ZPLUG_HOME/init.zsh
zplug "zplug/zplug",               hook-build:"zplug --self-manage"
zplug "robbyrussell/oh-my-zsh",    as:plugin, use:"lib/*.zsh"
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/common-aliases",    from:oh-my-zsh
zplug "plugins/extract",           from:oh-my-zsh
zplug "plugins/git",               from:oh-my-zsh
zplug "plugins/sudo",              from:oh-my-zsh
zplug "plugins/z",                 from:oh-my-zsh
zplug "nksoff/muslim",             as:theme
zplug "djui/alias-tips"
zplug "supercrabtree/k"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting"
if ! zplug check; then; zplug install; fi
zplug load

###################
#  PATH settings  #
###################

# homebrew path
PATH="/usr/local/bin:$PATH"
# ! ruby gem path
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"
# ! basicTeX path
PATH="/Library/TeX/texbin:$PATH"
# ! java env from android studio
PATH="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin:$PATH"
# ! my own scripts
PATH="$HOME/.local/bin:$PATH"
# [ZSH ONLY] prevent duplicate
typeset -U path

####################
#  other settings  #
####################

# default editor
export EDITOR="vim"
# ! gnupg path and tty
export GPG_TTY=$(tty)
# ! homebrew-bottles repo
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
# ! rg: better grep
hash rg 2> /dev/null && alias rg="rg -Li"
# ! trash: cli trash
hash trash 2> /dev/null && alias rmm="trash"
# ! TextEdit.app
alias te='open -a TextEdit'
# ! Delete .DS_Store
alias clds="find . -name '*.DS_Store' -type f -delete"
# ! calculate disk usage
alias duu="sh -c 'du -hs .[^.]* * | sort -rh'"
# ! abd toolkit
alias adb="$HOME/Library/Android/sdk/platform-tools/adb"
# ! enable proxy
alias hi="export http_proxy=http://localhost:8888 https_proxy=http://localhost:8888;"

###############
#  Functions  #
###############

# Recursively find files by name
function rf() {
    if hash rg 2> /dev/null; then
        rg --hidden -l --files --iglob "*$1*"
    else
        find . -iname "*$1*"
    fi
}
# Swap content between two files
function swap() {
    local TMPFILE=tmp.$$
    mv "$1" $TMPFILE && mv "$2" "$1" && mv $TMPFILE $2
}
# short manual
function sman() { curl cheat.sh/$1 }
