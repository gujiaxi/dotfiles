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
antigen bundle rimraf/k
# Load the theme
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure
antigen theme amuse
# done
antigen apply

####################
# custom settings
####################

# ruby bin
export PATH=$PATH:"$HOME/.gem/ruby/2.3.0/bin"

# some aliases
export EDITOR="vim"
alias t="ydcv"
