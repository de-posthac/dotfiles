export ZSH=$HOME/.dotfiles
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export NODE="node@14"

for config_file ($ZSH/lib/*.zsh) source $config_file
fpath=($ZSH/lib/completions $fpath)

alias code='/Applications/Visual\ Studio\ Code.app/contents/Resources/app/bin/code ./'

# Homebrew package zsh-completions
# brew install zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

# Load and run compinit
autoload -U compinit
compinit -i

export LDFLAGS="-L/usr/local/opt/$NODE/lib"
export CPPFLAGS="-I/usr/local/opt/$NODE/include"
export PATH="/usr/local/opt/$NODE/bin:/usr/local/sbin:$PATH"

export NODE_EXTRA_CA_CERTS="$ZSH/certs/ca-certificates.crt"
