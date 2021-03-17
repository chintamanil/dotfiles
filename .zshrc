# zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH="/Users/lonkar/.oh-my-zsh"

source ~/antigen.zsh
# antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
# antigen bundle heroku
antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# antigen bundle docker
antigen bundle brew
# antigen bundle common-aliases
# antigen bundle compleat
antigen bundle git-extras
antigen bundle git-flow
# antigen bundle npm
antigen bundle osx
# antigen bundle web-search
antigen bundle z

# NVM bundle
export NVM_LAZY_LOAD=true
# antigen bundle lukechilds/zsh-nvm
# antigen bundle Sparragus/zsh-auto-nvm-use
# Load bundles from external repos.
# antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k
# antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-autocomplete

##
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle common-aliases
# aliases: h for history, hsi for grepping history
antigen bundle history
# Run `vundle` `vundle-clean` immediately etc for vim
# antigen bundle vundle
antigen bundle tmux
antigen bundle tmuxinator
# antigen bundle fasd

eval "$(fasd --init auto)"
# source ~/.fasd-init-bash
# cd into recent directories

eval "$(fasd --init auto)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# alias a='fasd -a'        # any
# alias s='fasd -si'       # show / search / select
# alias d='fasd -d'        # directory
# alias f='fasd -f'        # file
# alias sd='fasd -sid'     # interactive directory selection
# alias sf='fasd -sif'     # interactive file selection
# alias zz='fasd_cd -d -i' # cd with interactive selection
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# antigen bundle history-substring-search
# Tell Antigen that you're done.
antigen apply
# Load custom aliases
# [[ -s "$HOME/.bash_aliases" ]] && source "$HOME/.bash_aliases"
# {"token":"013116eba5e9ebe36d2a78adb1d731b7c7fe8457"}%
export PYENV_ROOT=$HOME/.pyenv
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/usr/local/go/bin
export PATH=$PYENV_ROOT/bin:$PATH
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig:/usr/local/share/pkgconfig:/usr/lib/pkgconfig:/usr/local/Homebrew/Library/Homebrew/os/mac/pkgconfig/10.14
export VAULT_TOKEN=s.GUP2hZB4b2ELVfXHmF9OUTd3
export GOFLAGS='-mod=vendor'
export GOPRIVATE=”*f5net.com,gitlab.com/f5”
export AZURE_STORAGE_ACCOUNT=nginxdevopssvcs
export AZURE_STORAGE_AUTH_MODE=login
export GITLAB_API_TOKEN=p5Nps4EA6ss8mVG_JEse
export ZSH_CACHE_DIR=~

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward


# include Z, yo
. ~/z.sh

eval "$(pyenv init -)"
cd ~/indigo

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# zprof
