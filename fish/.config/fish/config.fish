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

set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx WINEPREFIX $XDG_DATA_HOME/wineprefixes/default
set -gx GTK_RC_FILES $XDG_CONFIG_HOME/gtk-1.0/gtkrc
set -gx GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -gx CUDA_CACHE_PATH $XDG_CACHE_HOME/nv
set -gx LESSKEY $XDG_CONFIG_HOME/less/lesskey
set -gx LESSHISTFILE $XDG_CACHE_HOME/less/history
set -gx NPM_CONFIG_USERCONFIG $XDG_CONFIG_HOME/npm/npmrc
set -gx ASPELL_CONF "per-conf $XDG_CONFIG_HOME/aspell/aspell.conf; personal $XDG_CONFIG_HOME/aspell/en.pws; repl $XDG_CONFIG_HOME/aspell/en.prepl"
set -gx WGETRC $XDG_CONFIG_HOME/wgetrc

set fish_greeting

function fish_prompt
#    echo (set_color --bold magenta)(prompt_pwd)
#    echo -n (set_color --bold red)'> '
#    set_color normal
end

function fish_mode_prompt
    switch $fish_bind_mode
      case default
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold red
	echo ' > '
      case insert
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold normal
	echo ' > '
      case replace_one
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold green
	echo ' > '
      case visual
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold brmagenta
	echo ' > '
      case '*'
    	echo (set_color --bold magenta)(prompt_pwd)
	set_color --bold red
	echo ' > '
    end
    set_color normal
end
