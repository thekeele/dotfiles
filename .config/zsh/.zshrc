# powerline cache, should be first
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# don't save less history
export LESSHISTFILE=-

# erlang build options
export KERL_BUILD_DOCS=yes
export KERL_INSTALL_HTMLDOCS=no
export KERL_INSTALL_MANPAGES=no
export KERL_DOC_TARGETS="chunks"
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --without-odbc --with-ssl=$(brew --prefix openssl@1.1)"

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)		# Include hidden files.

# Load aliases and powerline prompt 
[[ ! -f ~/.config/zsh/.aliasrc ]] || source ~/.config/zsh/.aliasrc
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

# load asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# load direnv
eval "$(direnv hook zsh)"
