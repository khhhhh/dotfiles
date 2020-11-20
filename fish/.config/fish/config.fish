fish_vi_key_bindings


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias vimrc='nvim ~/.config/nvim/init.vim'
alias vimbash='nvim ~/.bashrc'
alias vimi3='nvim ~/.config/i3/config'
alias neofetch='neofetch --w3m'
alias ranger='ranger --choosedir=$HOME/.config/ranger/rangerdir; set LASTDIR (cat $HOME/.config/ranger/rangerdir); cd "$LASTDIR"'
alias vim='nvim'
set -Ux XDG_CONFIG_HOME $HOME/.config
set -Ux XDG_CACHE_HOME $HOME/.cache
set -Ux XDG_DATA_HOME $HOME/.local/share
set fish_greeting
