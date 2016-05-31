####################
# antigen settings
####################

# Load antigen
source "$HOME/.zsh/antigen/antigen.zsh"
# Load the oh-my-zsh's library
antigen use oh-my-zsh
# Bundles from the default repo
antigen bundle git
antigen bundle tmux
antigen bundle z
# Other bundles
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle tarruda/zsh-autosuggestions
antigen bundle djui/alias-tips
antigen bundle supercrabtree/k
# Load the theme
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure
antigen theme amuse
# done
antigen apply

####################
# custom settings
####################

# some aliases
export EDITOR="vim"
alias t="ydcv"

# impinj
export PATH=$PATH:$HOME/impinj_etk:$HOME/impinj_etk/arm-toolchain/bin

# rvm
export PATH=$PATH:$HOME/bin
